library rider_review_screen.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/collection.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget to render RiderReviewScreen.
class RiderReviewScreen extends StatelessWidget with AutoRouteWrapper {
  const RiderReviewScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ReviewsCubit>(),
      child: BlocListener<ReviewsCubit, ReviewsState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void onRefresh(BuildContext c, RefreshController controller) async {
    await BlocProvider.of<ReviewsCubit>(c).getReviews();
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(title: 'Customer Feedback'),
      body: BlocSelector<ReviewsCubit, ReviewsState, Review>(
        selector: (s) => s.review,
        builder: (c, review) => DragToRefresh(
          initialRefresh: true,
          onRefresh: (controller) => onRefresh(c, controller),
          child: CustomScrollView(
            shrinkWrap: true,
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            controller: ScrollController(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (review.avgRating.getOrNull != null)
                        DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Utils.inputBorderRadius),
                            color: App.resolveColor(
                              Palette.cardColorLight,
                              dark: Palette.cardColorDark,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(0.02.sw),
                            child: Column(
                              children: [
                                AdaptiveText.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                      text:
                                          '${review.avgRating.getOrNull?.toStringAsFixed(1)}',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const TextSpan(text: '/'),
                                    const TextSpan(text: '5')
                                  ]),
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                  ),
                                ),
                                //
                                VerticalSpace(height: 0.02.sw),
                                //
                                RatingBar(
                                  glow: false,
                                  allowHalfRating: true,
                                  tapOnlyMode: true,
                                  initialRating:
                                      review.avgRating.getOrEmpty ?? 0.0,
                                  minRating: 1,
                                  maxRating: 5,
                                  itemSize: 0.05.sw,
                                  direction: Axis.horizontal,
                                  itemPadding: EdgeInsets.symmetric(
                                      horizontal: 0.005.sw),
                                  ratingWidget: RatingWidget(
                                    full: const Icon(Icons.star_sharp,
                                        color: Colors.amber),
                                    half: const Icon(Icons.star_half_sharp,
                                        color: Colors.amber),
                                    empty: const Icon(Icons.star_border_sharp,
                                        color: Colors.amber),
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                //
                                VerticalSpace(height: 0.02.sw),
                                //
                                AdaptiveText(
                                  '${review.totalReviews.getOrEmpty} ratings',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                ),
                              ],
                            ),
                          ),
                        ),
                      //
                      HorizontalSpace(width: 0.02.sw),
                      //
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: review.reviewGroups
                              .map(
                                (it) => SizedBox(
                                  width: double.infinity,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.01.sw,
                                      vertical: 0.01.sw,
                                    ),
                                    child: Row(
                                      children: [
                                        AdaptiveText(
                                          '${it.group.getOrEmpty}',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16.sp,
                                        ),
                                        //
                                        Icon(Icons.star_sharp,
                                            color: Colors.amber, size: 0.05.sw),
                                        //
                                        AdaptiveText(
                                          '(${it.count.getOrEmpty})',
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15.sp,
                                          textColor: Palette.text40,
                                          textColorDark: Palette.text100Dark,
                                          letterSpacing: Utils.letterSpacing,
                                        ),
                                        //
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 0.02.sw),
                                            child: LinearProgressIndicator(
                                              value: (it.count.getOrEmpty
                                                          ?.toDouble() ??
                                                      0) /
                                                  100,
                                              backgroundColor:
                                                  Palette.neutralF4,
                                              valueColor:
                                                  const AlwaysStoppedAnimation(
                                                      Palette.accentYellow),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                              .asList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              if (review.totalReviews.getOrNull != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(App.sidePadding),
                    child: GestureDetector(
                      onTap: () {},
                      child: AdaptiveText.rich(
                        TextSpan(children: [
                          const TextSpan(text: 'Reviews '),
                          TextSpan(
                              text: '(${review.totalReviews.getOrEmpty})',
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.w400,
                                color: App.resolveColor(
                                  Palette.text60,
                                  dark: Palette.text100Dark,
                                ),
                              ))
                        ]),
                        maxLines: 1,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              //
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, i) {
                    final feedback = review.feedbacks.getOrNull(i);

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AdaptiveListTile(
                          dense: true,
                          material: true,
                          horizontalTitleGap: 0.03.sw,
                          minVerticalPadding: 0.04.sw,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: App.sidePadding,
                          ),
                          tileColor: App.resolveColor(
                            Palette.cardColorLight,
                            dark: Palette.cardColorDark,
                          ),
                          title: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: AdaptiveText(
                                  '${feedback?.review.getOrEmpty}',
                                  fontSize: 16.sp,
                                  maxLines: 3,
                                  maxFontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: Utils.letterSpacing,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              //
                              VerticalSpace(height: 0.02.sw),
                              //
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AdaptiveText(
                                    '${DateFormat.yMMMd().format(feedback!.createdAt!)}',
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    textColor: Palette.text40,
                                  ),
                                  //
                                  RatingBar(
                                    glow: false,
                                    allowHalfRating: true,
                                    tapOnlyMode: true,
                                    initialRating:
                                        feedback.rate.getOrNull?.toDouble() ??
                                            0.0,
                                    minRating: 1,
                                    maxRating: 5,
                                    itemSize: 0.05.sw,
                                    direction: Axis.horizontal,
                                    itemPadding: EdgeInsets.symmetric(
                                        horizontal: 0.005.sw),
                                    ratingWidget: RatingWidget(
                                      full: const Icon(Icons.star_sharp,
                                          color: Colors.amber),
                                      half: const Icon(Icons.star_half_sharp,
                                          color: Colors.amber),
                                      empty: const Icon(Icons.star_border_sharp,
                                          color: Colors.amber),
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          onTap: () {},
                        ),
                        //
                        VerticalSpace(height: 0.03.sw),
                      ],
                    );
                  },
                  childCount: review.feedbacks.size,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
