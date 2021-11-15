library insights_cubit.dart;

import 'dart:convert';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'insights_cubit.freezed.dart';
part 'insights_state.dart';

@injectable
class InsightsCubit extends Cubit<InsightsState> with BaseCubit<InsightsState> {
  final AuthFacade _auth;
  final EchoRepository _echoRepository;
  final LogisticsRepository _repository;

  late String? riderId;

  InsightsCubit(
    this._repository,
    this._echoRepository,
    this._auth,
  ) : super(InsightsState.initial());

  @override
  Future<void> close() {
    if (riderId != null) {
      _echoRepository.stopListening(
          InsightEvents.channel('$riderId'), InsightEvents.event);
      _echoRepository.close(InsightEvents.channel('$riderId'));
    }
    return super.close();
  }

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void dateFilterChanged(DateFilter? filter) =>
      emit(state.copyWith(dateFilter: filter!));

  void dateChanged(DateTime? date) =>
      emit(state.copyWith(selectedDate: date ?? state.selectedDate));

  void echo() async {
    final _result = await _auth.rider;

    _result.fold(
      () => null,
      (account) {
        riderId = account!.uid.value!;

        _echoRepository.private(
          InsightEvents.channel('$riderId'),
          InsightEvents.event,
          onData: (data, _) {
            final json = jsonDecode(data) as Map<String, dynamic>;

            final insight =
                InsightDTO.fromJson(json['insight'] as Map<String, dynamic>);

            emit(state.copyWith(
              insight: insight.insightData?.domain ?? state.insight,
            ));
          },
        );
      },
    );
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
