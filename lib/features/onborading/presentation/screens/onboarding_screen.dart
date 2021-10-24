import 'package:amatrider/features/onborading/domain/onboarding.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget with AutoRouteWrapper {
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OnboardingCubit>()..attachControllerListener(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (c, s) => PageView.builder(
                itemCount: c.read<OnboardingCubit>().items.size,
                controller: s.controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, i) => OnBoardingItemBuilder(
                  item: c.read<OnboardingCubit>().items.elementAtOrNull(i),
                ),
              ),
            ),
          ),
          //
          Positioned(
            left: App.sidePadding,
            bottom: App.longest * 0.02,
            child: BlocBuilder<OnboardingCubit, OnboardingState>(
              builder: (c, s) => Center(
                child: AnimatedSmoothIndicator(
                  activeIndex: s.currentIndex,
                  count: c.read<OnboardingCubit>().items.size,
                  effect: ExpandingDotsEffect(
                    expansionFactor: 3.5,
                    activeDotColor: App.theme.colorScheme.secondary,
                    radius: 100.0,
                    spacing: 6.0,
                    dotHeight: App.height * 0.006,
                    dotWidth: 6.0,
                    dotColor: Palette.accentColor.shade100,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoardingItemBuilder extends StatefulWidget {
  final OnboardingItem<String>? item;

  const OnBoardingItemBuilder({
    Key? key,
    this.item,
  }) : super(key: key);

  @override
  State<OnBoardingItemBuilder> createState() => _OnBoardingItemBuilderState();
}

class _OnBoardingItemBuilderState extends State<OnBoardingItemBuilder> {
  late AssetImage? image;

  @override
  void initState() {
    super.initState();
    image = !widget.item!.image.caseInsensitiveContains('.svg')
        ? AssetImage(widget.item!.image)
        : null;
  }

  @override
  Widget build(BuildContext c) {
    return DecoratedBox(
      decoration: BoxDecoration(color: widget.item!.bgColor),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              top: App.longest * 0.1,
              left: 0,
              right: 0,
              bottom: 0,
              child: Center(
                // alignment: Alignment.center,
                child: Image(
                  image: image!,
                  width: 1.sw,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            //
            // if (false)
            Positioned(
              top: App.longest * 0.58,
              left: 0,
              right: 0,
              bottom: 0,
              child: Material(
                color: App.resolveColor(
                  Palette.cardColorLight,
                  dark: Palette.cardColorDark,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(32),
                ),
                child: SafeArea(
                  top: false,
                  left: true,
                  right: true,
                  bottom: true,
                  child: Stack(
                    children: [
                      Positioned(
                        top: App.longest * 0.03,
                        left: 0,
                        right: 0,
                        bottom: App.longest * 0.02,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: App.sidePadding),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: AdaptiveText(
                                    '${widget.item!.title}',
                                    maxLines: 1,
                                    minFontSize: 13,
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold,
                                    softWrap: true,
                                    wrapWords: true,
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.03.sw),
                                //
                                Flexible(
                                  flex: 4,
                                  child: AdaptiveText(
                                    '${widget.item!.description}',
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    minFontSize: 13,
                                    fontSize: 18.sp,
                                    wordSpacing: 2.0,
                                    softWrap: true,
                                    wrapWords: true,
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.04.sw),
                                //
                                Expanded(
                                  flex: 6,
                                  child: Column(
                                    children: [
                                      Flexible(
                                        child: AppButton(
                                          text: 'Next',
                                          fontWeight: FontWeight.w600,
                                          onPressed: !c
                                                  .watch<OnboardingCubit>()
                                                  .isLast(left(widget.item!))
                                              ? c.read<OnboardingCubit>().next
                                              : () => navigator.pushAndPopUntil(
                                                    const GetStartedRoute(),
                                                    predicate: (_) => false,
                                                  ),
                                        ),
                                      ),
                                      //
                                      VerticalSpace(height: 0.01.sw),
                                      //
                                      Flexible(
                                        child: AdaptiveButton(
                                          text: 'Skip',
                                          fontWeight: FontWeight.w600,
                                          textColor: Palette.accentColor,
                                          splashColor: Colors.black12,
                                          backgroundColor: App.resolveColor(
                                            Palette.cardColorLight,
                                            dark: Palette.cardColorDark,
                                          ),
                                          onPressed: () =>
                                              navigator.pushAndPopUntil(
                                            const GetStartedRoute(),
                                            predicate: (_) => false,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //
                                VerticalSpace(height: App.sidePadding),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
