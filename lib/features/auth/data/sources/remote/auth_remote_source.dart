library auth_remote_source.dart;

import 'dart:io';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthRemoteDatasource {
  final AppHttpClient _dio;

  AuthRemoteDatasource(this._dio);

  Future<Response<dynamic>> createRiderAccount(RiderDTO dto) async {
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return await _dio.post(EndPoints.REGISTER, data: data);
  }

  Future<Response<dynamic>> login({
    required String? email,
    required String? password,
  }) async {
    // Convert data to DTO
    final dto = RiderDTO(email: email, password: password);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.LOGIN, data: data);
  }

  Future<dynamic> signOut() async => await _dio.post(EndPoints.LOGOUT);

  Future<Response<dynamic>> timeout() async => await _dio.get(EndPoints.SLEEP);

  Future<Response<dynamic>> resendPhoneVerification(String? phone) {
    // Generate Form Data for request
    final data = FormData.fromMap(RiderDTO(phone: phone).toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.RESEND_PHONE_VERIFICATION, data: data);
  }

  Future<Response<dynamic>> verifyPhoneNumber({
    required String? phone,
    required String? token,
  }) async {
    // Convert data to DTO
    final dto = RiderDTO(phone: phone, token: token);
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform POST request based on role / user_type
    return _dio.post(EndPoints.CONFIRM_PHONE_VERIFICATION, data: data);
  }

  Future<Response<dynamic>> sendPasswordResetMessage(String? phone) async {
    // Generate Form Data for request
    final data = FormData.fromMap(RiderDTO(phone: phone).toJson());
    // Perform request to send password reset email
    return _dio.post(EndPoints.SEND_PASSWORD_RESET_MESSAGE, data: data);
  }

  Future<Response<dynamic>> confirmPasswordReset(RiderDTO dto) async {
    // Generate Form Data for request
    final data = FormData.fromMap(dto.toJson());
    // Perform request to reset user's password
    return _dio.post(EndPoints.CONFIRM_PASSWORD_RESET, data: data);
  }

  Future<Response<dynamic>> updateProfile({
    RiderDTO? dto,
    File? image,
  }) async {
    final part = image?.let(
      (it) => MultipartFile.fromFileSync(
        '${it.path}',
        filename: it.path.split(Platform.pathSeparator).last,
      ),
    );

    // Generate Form Data for request
    final _data = dto?.let((it) => FormData.fromMap(it.toJson())) ?? FormData();

    part?.let((it) => _data.files.add(MapEntry('profile_img', it)));

    // Perform PUT request to update user's profile
    return _dio.post(EndPoints.UPDATE_RIDER_PROFILE, data: _data);
    // return _dio.get(EndPoints.SLEEP);
  }

  Future<Response<dynamic>> updatePhoneNumber(String? phone) {
    // Generate Form Data for request
    final _data = FormData.fromMap(RiderDTO(phone: phone).toJson());
    // Perform PUT request to update user's profile
    return _dio.post(EndPoints.UPDATE_PHONE, data: _data);
  }

  Future<Response<dynamic>> confirmUpdatePhoneNumber({
    String? phone,
    String? token,
  }) {
    return _dio.patch(
      EndPoints.CONFIRM_UPDATE_PHONE,
      data: RiderDTO(phone: phone, token: token).toJson(),
    );
  }

  Future<Response<dynamic>> updatePassword({
    required String? current,
    required String? newPassword,
    required String? confirmation,
  }) {
    // Generate Form Data for request
    final data = RiderDTO(
      oldPassword: current,
      password: newPassword,
      confirmation: confirmation,
    ).toJson();
    // Perform PUT request to update user's profile
    return _dio.patch(EndPoints.UPDATE_PASSWORD, data: data);
  }

  Future<Response<dynamic>> signInWithGoogle(String? token) async {
    // Generate Form Data for request
    final data = FormData.fromMap({'token': token});
    return _dio.post(EndPoints.GOOGLE_SIGNIN, data: data);
  }

  Future<Response<dynamic>> signInWithApple(String? token) async {
    // Generate Form Data for request
    final data = FormData.fromMap({'token': token});
    return _dio.post(EndPoints.APPLE_SIGNIN, data: data);
  }

  Future<Response<dynamic>> toggleAvailability(RiderAvailability value) async {
    // Generate Form Data for request
    final data = {'availability': value.boolean};
    // Perform request to reset user's password
    return _dio.patch(EndPoints.TOGGLE_RIDER_AVAILABILITY, data: data);
  }

  Future<Response<dynamic>> deleteAccount() async {
    // Perform request to reset user's password
    return _dio.delete(EndPoints.DELETE_ACCOUNT);
  }

  Future<Either<AppHttpResponse, RiderDTO?>> getRider([
    VoidCallback? callback,
  ]) async {
    try {
      final _response = await _dio.get(EndPoints.GET_RIDER);

      return right(RiderDTO.fromJson(
        _response.data as Map<String, dynamic>,
      ));
    } on AppHttpResponse catch (e, trace) {
      return _catchBlock(callback, e, trace);
    } on AppNetworkException catch (e, trace) {
      return _catchBlock(callback, e.asResponse(), trace);
    }
  }

  Future<Either<AppHttpResponse, RiderDTO?>> _catchBlock(
    VoidCallback? callback,
    AppHttpResponse e,
    StackTrace trace,
  ) async {
    // If callback is not-null, call the method
    await callback?.call();

    switch (e.reason) {
      case AppNetworkExceptionReason.timedOut:
      case AppNetworkExceptionReason.cancelled:
        return left(e);
      case AppNetworkExceptionReason.responseError:
      default:
        await env.flavor.fold(
          prod: () async => // Log Inknown Exceptions to Firebase Analytics
              await getIt<FirebaseCrashlytics>().recordFlutterError(
            FlutterErrorDetails(exception: e.message, stack: trace),
          ),
        );
        return left(e);
    }
  }
}
