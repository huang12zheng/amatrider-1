library onboarding.dart;

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:amatrider/utils/utils.dart';

part 'onboarding.freezed.dart';

@freezed
@immutable
class OnboardingItem<Pixel> with _$OnboardingItem<Pixel> {
  const OnboardingItem._();

  const factory OnboardingItem({
    required String title,
    required String description,
    required Color bgColor,
    required Pixel image,
  }) = _OnboardingItem;

  static KtList<OnboardingItem<String>> get list => KtList.from([
        const OnboardingItem(
          title: 'Accept Requests',
          description: 'Receive and accept order and package requests from customers.',
          bgColor: Palette.pastelYellow,
          image: AppAssets.onboarding1,
        ),
        //
        const OnboardingItem(
          title: 'Deliver In Realtime',
          description: 'Deliver in Realtime, follow the path and arrive at the destination in shortest possible time.',
          bgColor: Palette.pastelBlue,
          image: AppAssets.onboarding2,
        ),
        //
        const OnboardingItem(
          title: 'Earn Bonuses',
          description: 'Receive tips from customers. \nExceed targets and get extra bonus.',
          bgColor: Palette.pastelGreen,
          image: AppAssets.onboarding3,
        ),
      ]);
}
