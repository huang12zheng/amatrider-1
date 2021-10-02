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
    required Pixel image,
  }) = _OnboardingItem;

  static KtList<OnboardingItem<String>> get list => KtList.from([
        const OnboardingItem(
          title: 'Restaurants At Your Doorsteps',
          description: 'Lorem ipsum dolor sit amet, consectetur'
              'adipiscing elit, sed do eiusmod tempor'
              'incididunt ut labore et dolore magna aliqua.',
          image: AppAssets.onboarding0,
        ),
        //
        const OnboardingItem(
          title: 'Restaurants At Your Doorsteps',
          description: 'Lorem ipsum dolor sit amet, consectetur'
              'adipiscing elit, sed do eiusmod tempor'
              'incididunt ut labore et dolore magna aliqua.',
          image: AppAssets.onboarding1,
        ),
        //
        const OnboardingItem(
          title: 'Restaurants At Your Doorsteps',
          description: 'Lorem ipsum dolor sit amet, consectetur'
              'adipiscing elit, sed do eiusmod tempor'
              'incididunt ut labore et dolore magna aliqua.',
          image: AppAssets.onboarding2,
        ),
      ]);
}
