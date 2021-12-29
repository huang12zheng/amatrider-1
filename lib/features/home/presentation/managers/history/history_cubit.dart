library history_cubit.dart;

import 'dart:convert';

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/data/websocket_event.dart';
import 'package:amatrider/core/presentation/managers/managers.dart';
import 'package:amatrider/features/auth/domain/index.dart';
import 'package:amatrider/features/home/data/models/history/index.dart';
import 'package:amatrider/features/home/data/repositories/laravel_echo_repository.dart';
import 'package:amatrider/features/home/data/repositories/logistics/logistics_repository.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:meta/meta.dart';

part 'history_cubit.freezed.dart';
part 'history_state.dart';

@injectable
class HistoryCubit extends Cubit<HistoryState> with BaseCubit<HistoryState> {
  final AuthFacade _auth;
  final EchoRepository _echoRepository;
  final LogisticsRepository _repository;

  String? riderId;

  HistoryCubit(
    this._repository,
    this._echoRepository,
    this._auth,
  ) : super(HistoryState.initial());

  @override
  Future<void> close() {
    if (riderId != null) {
      _echoRepository.stopListening(
          HistoryEvents.channel('$riderId'), HistoryEvents.event);
      _echoRepository.close(HistoryEvents.channel('$riderId'));
    }
    return super.close();
  }

  void toggleLoading([bool? isLoading, Option<AppHttpResponse?>? status]) =>
      emit(state.copyWith(
        isLoading: isLoading ?? !state.isLoading,
        status: status ?? state.status,
      ));

  void _updateCollection() {
    // Ensure only unique elements are present
    var _new =
        state.histories.iter.toList().unique((val) => val.id).toImmutableList();

    // Sort with & group-by the createdAt property
    var _sorted =
        _new.sortedWith((a, b) => b.createdAt!.compareTo(a.createdAt!)).groupBy(
              (it) => DateTime(
                it.createdAt!.year,
                it.createdAt!.month,
                it.createdAt!.day,
              ),
            );

    emit(state.copyWith(historyCollection: _sorted));
  }

  void echo() async {
    final _result = await _auth.rider;

    _result.fold(
      () => null,
      (account) {
        riderId = account!.uid.value!;

        _echoRepository.private(
          HistoryEvents.channel('$riderId'),
          HistoryEvents.event,
          onData: (data, _) {
            final json = jsonDecode(data) as Map<String, dynamic>;

            final history = DeliveryHistoryDTO.fromJson(
                json['package'] as Map<String, dynamic>);

            emit(state.copyWith(
              status: none(),
              histories: state.histories
                  .plusElement(history.domain)
                  .asList()
                  .unique((val) => val.id)
                  .toImmutableList(),
            ));

            // Update collection
            _updateCollection();
          },
        );
      },
    );
  }

  Future<void> getHistory() async {
    toggleLoading(true);

    final response = await _repository.allHistory();

    response.fold(
      (failure) => emit(state.copyWith(status: some(failure))),
      (history) {
        emit(state.copyWith(status: none(), histories: history));
        // Update collection
        _updateCollection();
      },
    );

    toggleLoading(false);
  }
}
