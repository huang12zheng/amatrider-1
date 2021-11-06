library insights_cubit.dart;

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
import 'package:meta/meta.dart';

part 'insights_cubit.freezed.dart';
part 'insights_state.dart';

@injectable
class InsightsCubit extends Cubit<InsightsState> with BaseCubit<InsightsState> {
  final LogisticsRepository _repository;
  final LaravelEchoRepository _echoRepository;
  final UtilitiesRepository _utilitiesRepository;

  InsightsCubit(
    this._repository,
    this._echoRepository,
    this._utilitiesRepository,
  ) : super(InsightsState.initial());

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void dateFilterChanged(DateFilter? filter) =>
      emit(state.copyWith(dateFilter: filter!));

  void dateChanged(DateTime? date) =>
      emit(state.copyWith(selectedDate: date ?? state.selectedDate));

  @override
  Future<void> close() async {
    // _echoRepository.stopListening(
    //   SendPackageSocket.channel(state.package.id.value!),
    //   SendPackageSocket.location,
    // );
    _echoRepository.close(
      // SendPackageSocket.channel(state.package.id.value!),
      null,
      nullify: true,
    );
    return super.close();
  }

  Future<void> fetchInsights() async {
    toggleLoading(true);

    final response = await _repository.insights();

    response.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (insight) => emit(state.copyWith(status: none(), insight: insight)),
    );

    toggleLoading(false);
  }

  Future<void> depositCash(double? cashAtHand) async {
    toggleLoading(true);

    emit(state.copyWith(status: none()));

    final response = await _repository.depositCash(cashAtHand);

    emit(state.copyWith(status: some(response)));

    toggleLoading(false);
  }

  Future<void> claimBonus() async {
    toggleLoading(true);

    emit(state.copyWith(status: none()));

    final response = await _repository.claimBinus();

    emit(state.copyWith(status: some(response)));

    toggleLoading(false);
  }
}
