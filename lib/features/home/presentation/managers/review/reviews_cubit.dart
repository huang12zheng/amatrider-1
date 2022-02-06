library reviews_cubit.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reviews_cubit.freezed.dart';
part 'reviews_state.dart';

@injectable
class ReviewsCubit extends Cubit<ReviewsState> with BaseCubit<ReviewsState> {
  final UtilitiesRepository _utils;

  ReviewsCubit(this._utils) : super(ReviewsState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  Future<void> getReviews() async {
    toggleLoading(true);

    final response = await _utils.getReviews();

    response.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (review) => emit(state.copyWith(status: none(), review: review)),
    );

    toggleLoading(false);
  }
}
