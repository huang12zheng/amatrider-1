library history_cubit.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/data/repositories/utilities_repository/utilities_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'history_state.dart';
part 'history_cubit.freezed.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> with BaseCubit<HistoryState> {
  final LaravelEchoRepository _echoRepository;
  final LogisticsRepository _repository;

  HistoryCubit(
    this._repository,
    this._echoRepository,
  ) : super(HistoryState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  Future<void> getHistory() async {
    toggleLoading(true);

    final response = await _repository.allHistory();

    response.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (history) {
        final collection = history
            .sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!))
            .groupBy(
              (it) => DateTime(
                it.createdAt!.year,
                it.createdAt!.month,
                it.createdAt!.day,
              ),
            );

        emit(state.copyWith(
            status: none(), histories: collection, historyList: history));
      },
    );

    toggleLoading(false);
  }
}
