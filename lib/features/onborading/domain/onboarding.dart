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
          title: 'Title Goes Here',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vestibulum porta ipsumLorem ipsum dolor sit amet',
          bgColor: Palette.pastelYellow,
          image: AppAssets.onboarding1,
        ),
        //
        const OnboardingItem(
          title: 'Title Goes Here',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vestibulum porta ipsumLorem ipsum dolor sit amet',
          bgColor: Palette.pastelBlue,
          image: AppAssets.onboarding2,
        ),
        //
        const OnboardingItem(
          title: 'Title Goes Here',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
              'Vestibulum porta ipsumLorem ipsum dolor sit amet',
          bgColor: Palette.pastelGreen,
          image: AppAssets.onboarding3,
        ),
      ]);
}
