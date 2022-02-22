part of insights_page.dart;

/// A stateless widget to render _ActivityChartWidget.
class _ActivityChartWidget extends StatefulWidget {
  const _ActivityChartWidget({Key? key}) : super(key: key);

  @override
  State<_ActivityChartWidget> createState() => __ActivityChartWidgetState();
}

class __ActivityChartWidgetState extends State<_ActivityChartWidget> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
        color: App.resolveColor(
          Palette.cardColorLight,
          dark: Palette.cardColorDark,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.04.sw,
              vertical: 0.008.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormInputLabel(
                  text: '${tr.activity}',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
                //
                HorizontalSpace(width: 0.1.sw),
                //
                Flexible(
                  child: BlocBuilder<InsightsCubit, InsightsState>(
                    builder: (c, s) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          flex: s.dateFilter != DateFilter.all_time ? 7 : 11,
                          child: DropdownFieldWidget<DateFilter>(
                            isDense: true,
                            items: [
                              DateFilter.all_time,
                              DateFilter.monthly,
                              DateFilter.yearly,
                            ],
                            height: 43,
                            backgroundColorLight: App.resolveColor(Colors.brown, dark: Palette.cardColorDark),
                            text: (it) => '${it?.label}',
                            minFontSize: 13,
                            selected: s.dateFilter,
                            onChanged: c.read<InsightsCubit>().dateFilterChanged,
                          ),
                        ),
                        //
                        Flexible(
                          flex: 8,
                          child: AnimatedVisibility(
                            visible: s.dateFilter != DateFilter.all_time,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                HorizontalSpace(width: 0.02.sw),
                                //
                                Flexible(
                                  child: AdaptiveListTile(
                                    dense: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                                    trailing: const Icon(Icons.keyboard_arrow_down_rounded),
                                    title: s.dateFilter.when(
                                      allTime: null,
                                      monthly: AdaptiveText('${DateFormat.MMMM().format(s.selectedDate!)}', maxLines: 1, fontSize: 16.sp),
                                      yearly: AdaptiveText('${DateFormat.y().format(s.selectedDate!)}', maxLines: 1, fontSize: 16.sp),
                                    ),
                                    horizontalTitleGap: 0,
                                    minVerticalPadding: 5,
                                    material: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        Utils.inputBorderRadius,
                                      ),
                                    ),
                                    onTap: () {
                                      App.showAdaptiveDatePicker(
                                        context,
                                        selectedDate: s.selectedDate,
                                        firstDate: DispatchActivity.firstDate,
                                        lastDate: DispatchActivity.lastDate,
                                        initialDatePickerMode: s.dateFilter.when(
                                          allTime: DatePickerMode.day,
                                          monthly: DatePickerMode.day,
                                          yearly: DatePickerMode.year,
                                        ),
                                        confirmText: '${tr.done}',
                                        cancelText: '${tr.cancel}',
                                        errorInvalidText: 'Invalid date',
                                        builder: (ctx, child) => Theme(
                                          data: Theme.of(ctx).copyWith(
                                            primaryColor: Palette.accent20,
                                            colorScheme: const ColorScheme.light(
                                              primary: Palette.accentColor,
                                              secondary: Palette.accent20,
                                            ),
                                            buttonTheme: const ButtonThemeData(textTheme: ButtonTextTheme.primary),
                                          ),
                                          child: child!,
                                        ),
                                        onChanged: c.read<InsightsCubit>().dateChanged,
                                      );
                                    },
                                  ),
                                ),
                              ],
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
          //
          const Divider(height: 0),
          //
          VerticalSpace(height: 0.025.h),
          //
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 0.4.h),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: BlocSelector<InsightsCubit, InsightsState, DispatchActivity?>(
                selector: (s) => s.insight.activities,
                builder: (_, activities) {
                  if (activities != null)
                    return BarChart(
                      barData(activities),
                      swapAnimationDuration: animDuration,
                    );

                  return Utils.nothing;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  BarChartData barData(DispatchActivity activities) {
    return BarChartData(
      barTouchData: BarTouchData(
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Palette.neutralF4,
          getTooltipItem: (group, groupIndex, rod, rodIndex) => BarTooltipItem(
            '${group.x.toDouble().label}\n',
            const TextStyle(
              fontWeight: FontWeight.bold,
              color: Palette.text100,
              fontSize: 18,
            ),
            children: <TextSpan>[
              TextSpan(
                text: (rod.y).toString().asCurrency(),
                style: const TextStyle(
                  color: Palette.accentColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        touchCallback: (event, barTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions || barTouchResponse == null || barTouchResponse.spot == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
          });
        },
      ),
      titlesData: FlTitlesData(
        show: true,
        topTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        leftTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          checkToShowTitle: (minValue, maxValue, sideTitles, appliedInterval, value) => value % 10 == 0,
          getTitles: (value) {
            if (value == 0)
              return '${value.toInt()}';
            // else if (3000 % 10 >= 10000)
            //   return '10K+';
            else
              return '${'$value'.asCurrency()}';
          },
          getTextStyles: (_, value) => TextStyle(
            color: App.resolveColor(const Color(0xff4C5862), dark: Palette.text100Dark),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
          ),
          margin: 8,
          getTitles: (value) => value.label,
        ),
      ),
      barGroups: group(activities),
      gridData: FlGridData(show: false),
      // alignment: BarChartAlignment.start,
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xffDFE1E6), width: 1.5),
          left: BorderSide(color: Color(0xffDFE1E6), width: 1.5),
        ),
      ),
    );
  }

  List<BarChartGroupData> group(DispatchActivity activities) => [
        // Delivery with Card
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              y: activities.deliveryWithCard.amount.getOrNull ?? 0,
              width: 60,
              colors: [const Color(0xffD4E6FF)],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Utils.buttonRadius),
                topRight: Radius.circular(Utils.buttonRadius),
              ),
            ),
          ],
        ),
        // Delivery with Cash
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              y: activities.deliveryWithCash.amount.getOrNull ?? 0,
              width: 60,
              colors: [const Color(0xff79F2C0)],
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(Utils.buttonRadius),
                topRight: Radius.circular(Utils.buttonRadius),
              ),
            ),
          ],
        ),
      ];
}

extension on double {
  String get label {
    switch (toInt()) {
      case 0:
        return '${S.current.cardPOS}';
      case 1:
        return '${S.current.cash}';
      default:
        return '';
    }
  }
}
