import 'package:amatrider/utils/utils.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:amatrider/features/onborading/domain/onboarding.dart';
import 'package:video_player/video_player.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  VideoPlayerController? playerController;
  final KtList<OnboardingItem<String>> items = OnboardingItem.list;

  OnboardingCubit() : super(OnboardingState.initial());

  void startSplash() async {
    playerController = VideoPlayerController.asset(
      AppAssets.splashVideo,
      videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
    );

    // Initialize controller
    await playerController?.initialize();
    // Attach Listener to controller
    playerController?.addListener(_playbackListener);

    // Start video
    await playerController?.play();
    await playerController?.setLooping(false);

    // Ensure the first frame is shown after the video is initialized
    emit(state.copyWith(isVideoPlaying: true));
  }

  void _playbackListener() {
    if (!playerController!.value.isPlaying &&
        playerController!.value.position.inSeconds >=
            playerController!.value.duration.inSeconds) {
      emit(state.copyWith(playbackEnded: true));
    }
  }

  void attachControllerListener() {
    state.controller.addListener(() {
      if (state.controller.page != null &&
          state.controller.page?.round() != state.currentIndex) {
        emit(state.copyWith(currentIndex: state.controller.page!.round()));
      }
    });
  }

  void prev() async {
    if (state.currentIndex != 0)
      await state.controller.previousPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    emit(state.copyWith(controller: state.controller));
  }

  void next() async {
    if (state.currentIndex != items.size - 1)
      await state.controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    emit(state.copyWith(controller: state.controller));
  }

  bool isLast(Either<OnboardingItem<String>, int> value) {
    return value.fold(
      (onboardingItem) => items.indexOf(onboardingItem) == items.size - 1,
      (index) => index == items.size - 1,
    );
  }

  @override
  Future<void> close() {
    playerController?.removeListener(_playbackListener);
    playerController?.dispose();
    return super.close();
  }
}
