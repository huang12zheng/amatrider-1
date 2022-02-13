library promotion_cubit.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'promotion_cubit.freezed.dart';
part 'promotion_state.dart';

@injectable
class PromotionCubit extends Cubit<PromotionState> with BaseCubit<PromotionState> {
  final UtilitiesRepository _repository;

  PromotionCubit(this._repository) : super(PromotionState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(isLoading: isLoading ?? !state.isLoading, status: status ?? state.status));

  void getPromotions({int? perPage, bool nextPage = false, String? speciality, void Function()? onDone}) async {
    if (state.status.getOrNull == AppHttpResponse.endOfList && nextPage) return;

    !nextPage ? toggleLoading(true, none()) : emit(state.copyWith(isLoadingMorePromotions: true, status: none()));

    final _response = await _repository.promotions(perPage: perPage, nextPage: nextPage);

    _response.fold(
      (f) => emit(state.copyWith(status: some(f))),
      (_new) {
        KtList<Promotion> _list;

        if (nextPage)
          _list = state.promotions.plusIfAbsent(_new);
        else
          _list = _new;

        emit(state.copyWith(promotions: _list));

        onDone?.call();
      },
    );

    !nextPage ? toggleLoading(false) : emit(state.copyWith(isLoadingMorePromotions: false));
  }
}
