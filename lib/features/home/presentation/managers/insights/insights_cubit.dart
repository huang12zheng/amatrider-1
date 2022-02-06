library insights_cubit.dart;

import 'dart:convert';

import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/models/models.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'insights_cubit.freezed.dart';
part 'insights_state.dart';

@injectable
class InsightsCubit extends Cubit<InsightsState> with BaseCubit<InsightsState> {
  final AuthFacade _auth;
  final EchoRepository _echoRepository;
  final LogisticsRepository _repository;

  String? riderId;

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

  void claimBonusLoading(bool loading) =>
      emit(state.copyWith(claimBonusLoading: loading));

  void cashDepositLoading(bool loading) =>
      emit(state.copyWith(depositCashLoading: loading));

  void setCashDepositVisible(bool isOpen) =>
      emit(state.copyWith(depositDialogOpen: isOpen));

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

            if (insight.insightData?.cashAtHand == 0 && state.depositDialogOpen)
              emit(state.copyWith(depositConfirmed: true));

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

  Future<void> depositCash() async {
    cashDepositLoading(true);

    final response = await _repository.depositCash();

    response.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (account) {
        emit(state.copyWith(account: account, depositConfirmed: false));

        depositEcho(account);
      },
    );

    cashDepositLoading(false);
  }

  void cancelDeposit() {
    setCashDepositVisible(false);
    cashDepositLoading(false);
    _echoRepository.stopListening(
        InsightEvents.depositChannel('${state.account?.id.value}'),
        InsightEvents.depositEvent);
  }

  void depositEcho(BankAccount account) {
    cashDepositLoading(true);

    getIt<EchoRepository>().private(
      InsightEvents.depositChannel('${account.id.value}'),
      InsightEvents.depositEvent,
      onData: (data, _this) {
        log.wtf(data);

        final json = jsonDecode(data) as Map<String, dynamic>;

        log.w('deposit log => \n $json');

        emit(state.copyWith(depositConfirmed: true));

        if (state.depositConfirmed) {
          _this.leaveChannel(
              InsightEvents.depositChannel('${state.account?.id.value}'),
              event: InsightEvents.depositEvent);
        }
      },
    );
  }

  Future<void> claimBonus() async {
    claimBonusLoading(true);

    emit(state.copyWith(status: none()));

    final response = await _repository.claimBinus();

    emit(state.copyWith(status: some(response)));

    claimBonusLoading(false);
  }
}
