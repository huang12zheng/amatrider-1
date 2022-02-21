library verification_cubit.dart;

import 'dart:io';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:kt_dart/kt.dart' hide StandardKt;

part 'verification_cubit.freezed.dart';
part 'verification_state.dart';

enum IdSection { front, back }

enum ImagePickerType { camera, gallery }

@injectable
class VerificationCubit extends Cubit<VerificationState> with BaseCubit<VerificationState>, _ImagePickerMixin {
  final UtilitiesRepository _repository;
  final AuthFacade _authFacade;

  VerificationCubit(this._repository, this._authFacade) : super(VerificationState.initial());

  void toggleLoading([bool? isLoading]) => emit(state.copyWith(isLoading: isLoading ?? !state.isLoading));

  void countryChanged(CountryCode? code) {
    final country = state.countries.firstOrNull(
      (it) => it.iso?.getOrNull?.equals(code?.code) ?? false,
    );

    emit(state.copyWith(selectedCountry: country));
  }

  void documentTypeChanged(DocumentID value) => emit(state.copyWith(documentID: value));

  void verifyDocuments() async {
    toggleLoading(true);

    // clear form validation errors
    emit(state.copyWith(status: none()));

    if (state.selectedCountry == null) {
      emit(state.copyWith(
        isLoading: false,
        status: some(AppHttpResponse.failure(
          'Please select a Country from the dropdown!',
        )),
      ));

      navigator.popUntil(
        (route) => route.settings.name == AccountVerificationRoute.name,
      );
      return;
    }

    if (state.frontID == null) {
      emit(state.copyWith(
        isLoading: false,
        status: some(AppHttpResponse.failure(
          'Please select a Front ID document',
        )),
      ));
      return;
    }

    if (state.backID == null) {
      emit(state.copyWith(
        isLoading: false,
        status: some(AppHttpResponse.failure(
          'Please select a Back ID document',
        )),
      ));
      return;
    }

    if (state.frontID != null && state.backID != null) {
      final result = await _repository.verifyDocuments(
        back: state.backID,
        front: state.frontID,
        type: state.documentID!.value,
        country: state.selectedCountry!,
      );

      await result.response.mapOrNull(
        error: (_) async => emit(state.copyWith(status: some(result))),
        success: (it) async {
          // Update user profile
          final _new = await _authFacade.rider;
          await _authFacade.update(_new);

          emit(state.copyWith(status: some(result)));
        },
      );
    }

    toggleLoading(false);
  }

  Future<void> fetchCountries() async {
    toggleLoading(true);

    final _countries = await _repository.countries();

    _countries.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (countries) {
        emit(
          state.copyWith(
            countries: countries.sorted(),
            selectedCountry: countries.firstOrNull((it) =>
                it.iso3 != null &&
                it.iso3!.getOrEmpty!.caseInsensitiveContains(
                  Country.turkeyISO3,
                )),
          ),
        );
      },
    );

    toggleLoading(false);
  }
}

mixin _ImagePickerMixin on Cubit<VerificationState> {
  final ImagePicker _picker = ImagePicker();

  void pickImage(IdSection section, [ImagePickerType type = ImagePickerType.camera]) async {
    try {
      File? file;
      String? fileName;
      var fileSize = 0;

      var _result = await _picker.pickImage(source: type == ImagePickerType.camera ? ImageSource.camera : ImageSource.gallery);

      if (_result == null) {
        file = await _attemptImageFileRetrieval(_picker);
        if (file != null) fileName = p.basenameWithoutExtension(file.path);
      } else {
        file = File(_result.path);
        fileName = p.basenameWithoutExtension(file.path);
        fileSize = file.lengthSync();
      }

      if (fileSize > Const.maxUploadSize) {
        emit(state.copyWith(
          status: some(AppHttpResponse.failure(
            'Max. image upload size is ${(Const.maxUploadSize / 1e+6).ceil()}MB',
          )),
        ));
        return;
      }

      if (file != null) {
        var mime = _resolveMimeType(file);

        final size = (fileSize * 1e-6).roundToIntOrDouble < 1 ? '<1' : '${(fileSize * 1e-6).roundToIntOrDouble}';

        section.fold(
          front: () {
            emit(state.copyWith(
              frontID: file,
              frontName: BasicTextField(fileName),
              frontSize: BasicTextField(size),
              frontIsImage: true,
              frontMimeType: mime,
              status: none(),
            ));
          },
          back: () {
            emit(state.copyWith(
              backID: file,
              backName: BasicTextField(fileName),
              backSize: BasicTextField(size),
              backIsImage: true,
              backMimeType: mime,
              status: none(),
            ));
          },
        );
      }
    } catch (e, tr) {
      log.e(e, tr);
      await App.report(exception: e, stack: tr);
    }
  }

  void pickFileExplorer(IdSection section) async {
    try {
      File? file;
      String? fileName;
      var fileSize = 0;

      var _result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'doc', 'docx'],
        allowCompression: false,
      );

      if (_result != null && _result.files.isNotEmpty) {
        file = File(_result.files.first.path!);
        fileName = p.basenameWithoutExtension(file.path);
        fileSize = file.lengthSync();
      }

      if (fileSize > Const.maxUploadSize) {
        emit(state.copyWith(
          status: some(AppHttpResponse.failure(
            'Max. document upload size is ${(Const.maxUploadSize / 1e+6).ceil()}MB',
          )),
        ));
        return;
      }

      if (file != null) {
        var mime = _resolveMimeType(file);

        final size = (fileSize * 1e-6).roundToIntOrDouble < 1 ? '<1' : '${(fileSize * 1e-6).roundToIntOrDouble}';

        section.fold(
          front: () {
            emit(state.copyWith(
              frontID: file,
              frontName: BasicTextField(fileName),
              frontSize: BasicTextField(size),
              frontIsImage: mime == DocumentMimeType.img,
              frontMimeType: mime,
              status: none(),
            ));
          },
          back: () {
            emit(state.copyWith(
              backID: file,
              backName: BasicTextField(fileName),
              backSize: BasicTextField(size),
              backIsImage: mime == DocumentMimeType.img,
              backMimeType: mime,
              status: none(),
            ));
          },
        );
      }
    } catch (e, tr) {
      log.e(e, tr);
      await App.report(exception: e, stack: tr);
    }
  }

  Future<File?> _attemptImageFileRetrieval(ImagePicker? picker) async {
    if (picker == null) return null;
    final _response = await _picker.retrieveLostData();
    if (!_response.isEmpty && _response.file != null) return File(_response.file!.path);
    return null;
  }

  DocumentMimeType? _resolveMimeType(File? file) {
    if (file == null) return null;

    var _ext = p.extension(file.path);

    switch (_ext) {
      case '.jpg':
      case '.jpeg':
      case '.png':
        return DocumentMimeType.img;
      case '.doc':
      case '.docx':
        return DocumentMimeType.doc;
      case '.pdf':
        return DocumentMimeType.pdf;
      default:
        return null;
    }
  }
}

extension on IdSection {
  T fold<T>({
    required T Function() front,
    required T Function() back,
  }) {
    switch (this) {
      case IdSection.front:
        return front.call();
      case IdSection.back:
        return back.call();
    }
  }
}
