library expandable_shimmer.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum ExpandableShimmerFooter { single, double }

/// A stateless widget to render ExpandableShimmer.
class ExpandableShimmer extends StatelessWidget {
  final bool primary;
  final bool _asList;
  final int count;
  final bool showFooterButtons;
  final bool Function(int)? initialExpanded;
  final ExpandableShimmerFooter footer;

  const ExpandableShimmer({
    Key? key,
    this.showFooterButtons = false,
    this.footer = ExpandableShimmerFooter.double,
  })  : _asList = false,
        primary = false,
        initialExpanded = null,
        count = 0,
        super(key: key);

  const ExpandableShimmer.list({
    Key? key,
    this.primary = false,
    required this.count,
    this.initialExpanded,
    this.footer = ExpandableShimmerFooter.double,
  })  : _asList = true,
        showFooterButtons = false,
        super(key: key);

  Widget shimmer([int? index]) => ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: SizedBox(
          width: double.infinity,
          height: showFooterButtons ||
                  initialExpanded != null && initialExpanded!.call(index ?? 0)
              ? 0.15.h
              : 0.095.h,
          child: RectangleShimmer(
            width: double.infinity,
            height: double.infinity,
            boxColor: Colors.grey.shade400,
            shimmerBaseColor: App.resolveColor(
              Colors.grey.shade300,
              dark: Colors.grey.shade600,
            )!,
            shimmerHighlightColor: App.resolveColor(
              Colors.grey.shade200,
              dark: Colors.grey.shade500,
            )!,
            child: LayoutBuilder(
              builder: (_, constraints) => Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 0.03.sw,
                  horizontal: 0.03.sw,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 10,
                      child: SizedBox(
                        width: double.infinity,
                        height: showFooterButtons ||
                                initialExpanded != null &&
                                    initialExpanded!.call(index ?? 0)
                            ? 0.08.h
                            : null,
                        child: Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5.0),
                                child: Container(
                                  width: double.infinity,
                                  color: App.resolveColor(
                                    Colors.grey.shade400,
                                    dark: Colors.grey.shade700,
                                  ),
                                ),
                              ),
                            ),
                            //
                            HorizontalSpace(width: 0.03.sw),
                            //
                            Flexible(
                              flex: 8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            flex: 4,
                                            child: Container(
                                              height: 10,
                                              width: double.infinity,
                                              color: App.resolveColor(
                                                Colors.grey.shade400,
                                                dark: Colors.grey.shade700,
                                              ),
                                            ),
                                          ),
                                          //
                                          HorizontalSpace(width: 0.3.sw),
                                          //
                                          Flexible(
                                            child: Container(
                                              height: 10,
                                              width: App.shortest * 0.25,
                                              color: App.resolveColor(
                                                Colors.grey.shade400,
                                                dark: Colors.grey.shade700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 10,
                                            child: Row(
                                              children: [
                                                Flexible(
                                                  child: Container(
                                                    height: 17,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: App.resolveColor(
                                                        Colors.grey.shade400,
                                                        dark: Colors
                                                            .grey.shade700,
                                                      ),
                                                      borderRadius: BorderRadius
                                                          .circular(Utils
                                                              .buttonRadius),
                                                    ),
                                                  ),
                                                ),
                                                //
                                                HorizontalSpace(width: 0.02.sw),
                                                //
                                                Flexible(
                                                  child: Container(
                                                    height: 17,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: App.resolveColor(
                                                        Colors.grey.shade400,
                                                        dark: Colors
                                                            .grey.shade700,
                                                      ),
                                                      borderRadius: BorderRadius
                                                          .circular(Utils
                                                              .buttonRadius),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //
                                          HorizontalSpace(width: 0.1.sw),
                                          //
                                          Flexible(
                                            flex: 3,
                                            child: Container(
                                              height: 10,
                                              width: double.infinity,
                                              color: App.resolveColor(
                                                Colors.grey.shade400,
                                                dark: Colors.grey.shade700,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    if (showFooterButtons ||
                        initialExpanded != null &&
                            initialExpanded!.call(index ?? 0))
                      ..._footer,
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  List<Widget> get _footer => [
        if (footer == ExpandableShimmerFooter.double)
          Flexible(
            flex: 8,
            child: Column(
              children: [
                VerticalSpace(height: 0.01.h),
                //
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          height: 0.06.h,
                          width: 0.3.sw,
                          decoration: BoxDecoration(
                            color: App.resolveColor(
                              Colors.grey.shade400,
                              dark: Colors.grey.shade700,
                            ),
                            borderRadius:
                                BorderRadius.circular(Utils.buttonRadius),
                          ),
                        ),
                      ),
                      //
                      HorizontalSpace(width: 0.07.sw),
                      //
                      Flexible(
                        child: Container(
                          height: 0.06.h,
                          width: 0.3.sw,
                          decoration: BoxDecoration(
                            color: App.resolveColor(
                              Colors.grey.shade400,
                              dark: Colors.grey.shade700,
                            ),
                            borderRadius:
                                BorderRadius.circular(Utils.buttonRadius),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        if (footer == ExpandableShimmerFooter.single)
          Flexible(
            flex: 8,
            child: Column(
              children: [
                VerticalSpace(height: 0.01.h),
                //
                Flexible(
                  child: Container(
                    height: 0.06.h,
                    width: 0.6.sw,
                    decoration: BoxDecoration(
                      color: App.resolveColor(
                        Colors.grey.shade400,
                        dark: Colors.grey.shade700,
                      ),
                      borderRadius: BorderRadius.circular(Utils.buttonRadius),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ];

  @override
  Widget build(BuildContext context) {
    return WidgetVisibility(
      visible: _asList,
      replacement: shimmer(),
      child: ListView.custom(
        shrinkWrap: true,
        primary: primary,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        childrenDelegate: SliverChildBuilderDelegate(
          (_, i) => Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              shimmer(i),
              //
              VerticalSpace(height: 0.012.h),
            ],
          ),
          childCount: count,
        ),
      ),
    );
  }
}
