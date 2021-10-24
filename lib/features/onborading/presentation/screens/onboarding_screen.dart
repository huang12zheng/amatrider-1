import 'package:amatrider/widgets/adaptive/adaptive_alertdialog.dart';
import 'package:amatrider/features/onborading/domain/onboarding.dart';
import 'package:amatrider/features/onborading/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                itemCount: context.read<OnboardingCubit>().items.size,
                controller: s.controller,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) => OnBoardingItemBuilder(
                  item: c.read<OnboardingCubit>().items.elementAtOrNull(i),
                ),
              ),
            ),
          ),
          //
          Positioned(
            top: 0.58.sh,
            left: 0,
            right: 0,
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
  late AssetImage image;

  @override
  void initState() {
    super.initState();
    image = AssetImage(widget.item!.image);
  }

  @override
  void dispose() {
    image.evict();
    super.dispose();
  }

  @override
  Widget build(BuildContext c) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              bottom: 0.47.sh,
              child: Center(
                child: widget.item!.image.caseInsensitiveContains('.gif')
                    ? Image(
                        image: image,
                        width: 0.85.sw,
                        fit: BoxFit.contain,
                        gaplessPlayback: false,
                      )
                    : SvgPicture.asset(
                        widget.item!.image,
                        width: 0.85.sw,
                        fit: BoxFit.contain,
                      ),
              ),
            ),
            //
            Positioned.fill(
              top: 0.58.sh,
              child: Center(
                child: Column(
                  children: [
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.06.sw),
                        child: AutoSizeText(
                          '${widget.item!.title}',
                          maxLines: 1,
                          minFontSize: 13,
                          style: TextStyle(
                            fontSize: 28.sp,
                            color: Palette.accentColor,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap: true,
                          wrapWords: true,
                        ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    Flexible(
                      flex: 2,
                      child: AutoSizeText(
                        '${widget.item!.description}',
                        textAlign: TextAlign.center,
                        maxLines: 3,
                        minFontSize: 13,
                        style: TextStyle(
                          fontSize: 18.sp,
                          wordSpacing: 2.0,
                        ),
                        softWrap: true,
                        wrapWords: true,
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.06.sw),
                    //
                    Flexible(
                      child: AppButton(
                        text: !c
                                .watch<OnboardingCubit>()
                                .isLast(left(widget.item!))
                            ? 'Next'
                            : 'Get Started',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        onPressed: !c
                                .watch<OnboardingCubit>()
                                .isLast(left(widget.item!))
                            ? c.read<OnboardingCubit>().next
                            : () => navigator.pushAndPopUntil(
                                  const DashboardRoute(),
                                  predicate: (_) => false,
                                ),
                      ),
                    ),
                    //
                    VerticalSpace(height: 0.03.sw),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
