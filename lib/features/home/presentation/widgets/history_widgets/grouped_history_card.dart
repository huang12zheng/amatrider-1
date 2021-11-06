library grouped_history_card.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:kt_dart/kt.dart';

part './delivery_history_card.dart';

/// A stateless widget to render GroupedHistoryCard.
class GroupedHistoryCard extends StatelessWidget {
  final DateTime? dateTime;
  final KtList<DeliveryHistory> histories;

  const GroupedHistoryCard({
    Key? key,
    required this.dateTime,
    required this.histories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      primary: false,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding,
          ).copyWith(top: 0.03.sw),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Headline(
                      '${DateFormat.yMMMEd().format(dateTime!)}',
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    //
                    // Material(
                    //   color: App.resolveColor(Colors.transparent),
                    //   borderRadius: BorderRadius.circular(Utils.buttonRadius),
                    //   child: InkWell(
                    //     onTap: () {},
                    //     borderRadius: BorderRadius.circular(Utils.buttonRadius),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(8.0),
                    //       child: AdaptiveText(
                    //         'See all',
                    //         textColor: Palette.accentColor,
                    //         fontSize: 17.sp,
                    //         letterSpacing: Utils.letterSpacing,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
        //
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: App.sidePadding,
          ).copyWith(top: 0.02.sw),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => Column(
                children: [
                  DeliveryHistoryCard(
                    history: histories[i],
                    initialExpanded: histories.firstOrNull()?.id ==
                        histories.getOrNull(i)?.id,
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                ],
              ),
              childCount: histories.size,
            ),
          ),
        ),
      ],
    );
  }
}
