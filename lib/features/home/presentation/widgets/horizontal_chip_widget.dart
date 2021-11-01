library horizontal_chip_widget.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:chips_choice_null_safety/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum HorizontalChipType { rating, time, distance, none }

/// A stateless widget to render HorizontalChipWidget.
class HorizontalChipWidget extends StatelessWidget {
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? scrollMargin;
  final List<HorizontalChip> tags;
  final EdgeInsets? widgetPadding;
  final bool wrapped;

  const HorizontalChipWidget({
    Key? key,
    required this.tags,
    this.wrapped = true,
    this.padding,
    this.widgetPadding,
    this.scrollMargin,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChipsChoice<HorizontalChip>.multiple(
      value: tags,
      padding: EdgeInsets.zero.merge(padding),
      wrapped: wrapped,
      choiceBuilder: (choice) => MyHero(
        elevation: 0.0,
        type: MaterialType.transparency,
        borderRadius:
            borderRadius ?? const BorderRadius.all(Radius.circular(5)),
        tag: '${choice.value.heroTag ?? UniqueId<String>.v4().value}',
        child: Container(
          margin: EdgeInsets.zero.merge(scrollMargin),
          padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.005.sh)
              .merge(widgetPadding),
          decoration: BoxDecoration(
            color: choice.style?.color,
            borderRadius:
                borderRadius ?? const BorderRadius.all(Radius.circular(5)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (choice.value.type == HorizontalChipType.rating)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Utils.platform_(
                        material: Icons.star,
                        cupertino: CupertinoIcons.star_fill,
                      ),
                      size: choice.value.iconSize ?? 18,
                      color: choice.value.iconColor ?? Palette.accentYellow,
                    ),
                    //
                    HorizontalSpace(width: 0.01.sw),
                  ],
                ),
              if (choice.value.type == HorizontalChipType.time)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Utils.platform_(
                        material: Icons.access_time_rounded,
                        cupertino: CupertinoIcons.time,
                      ),
                      size: choice.value.iconSize ?? 18,
                      color: choice.value.iconColor ?? Palette.accentGreen,
                    ),
                    //
                    HorizontalSpace(width: 0.01.sw),
                  ],
                ),
              if (choice.value.type == HorizontalChipType.distance)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      AmatNow.bike,
                      size: choice.value.iconSize ?? 13,
                      color: choice.value.iconColor ?? Palette.accentBlue,
                    ),
                    //
                    HorizontalSpace(width: 0.03.sw),
                  ],
                ),
              //
              choice.value.icon?.let(
                    (it) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(it,
                            size: choice.value.iconSize,
                            color: choice.value.iconColor),
                        //
                        HorizontalSpace(width: 0.03.sw),
                      ],
                    ),
                  ) ??
                  Utils.nothing,
              //
              Flexible(
                child: AdaptiveText(
                  choice.label,
                  softWrap: false,
                  fontSize: choice.value.fontSize,
                  minFontSize: choice.value.minFontSize,
                  maxFontSize: choice.value.maxFontSize,
                  style: choice.style?.labelStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      onChanged: (value) {},
      choiceItems: tags
          .map(
            (e) => C2Choice(
              value: e,
              label: e.label,
              selected: true,
              style: C2ChoiceStyle(
                labelStyle: TextStyle(
                  fontSize: e.fontSize,
                  color: e.labelColor,
                ),
                color: e.backgroundColor,
                brightness: Brightness.light,
                borderColor: Colors.transparent,
              ),
            ),
          )
          .toList(),
    );
  }
}

class HorizontalChip {
  final Color? backgroundColor;
  final double fontSize;
  final String? heroTag;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final String label;
  final Color? labelColor;
  final double maxFontSize;
  final double minFontSize;
  final HorizontalChipType type;

  HorizontalChip({
    required this.label,
    this.labelColor,
    this.backgroundColor = Palette.neutralF5,
    this.type = HorizontalChipType.none,
    this.heroTag,
    double? fontSize,
    this.minFontSize = 13,
    this.maxFontSize = double.infinity,
    this.icon,
    this.iconSize,
    this.iconColor,
  }) : fontSize = fontSize ?? 14.sp;
}
