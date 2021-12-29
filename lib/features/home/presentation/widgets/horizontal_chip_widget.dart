library horizontal_chip_widget.dart;

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

enum HorizontalChipType { rating, time, distance, none }

enum HorizontalChipIconPosition { left, right }

/// A stateless widget to render HorizontalChipWidget.
class HorizontalChipWidget extends StatelessWidget {
  final BorderRadius? borderRadius;
  final EdgeInsets? padding;
  final EdgeInsets? scrollMargin;
  final List<HorizontalChip> tags;
  final EdgeInsets? widgetPadding;
  final bool wrapped;
  final double? runSpacing;
  final double? spacing;
  final double maxFontSize;
  final double minFontSize;
  final double? fontSize;
  final FontWeight? fontWeight;

  const HorizontalChipWidget({
    Key? key,
    required this.tags,
    this.wrapped = true,
    this.padding,
    this.widgetPadding,
    this.scrollMargin,
    this.borderRadius,
    this.runSpacing,
    this.spacing,
    this.fontSize,
    this.fontWeight = FontWeight.normal,
    this.minFontSize = 13,
    this.maxFontSize = double.infinity,
  }) : super(key: key);

  Widget _icon(C2Choice<HorizontalChip> choice) =>
      choice.value.icon?.let(
        (it) => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (choice.value.iconPosition == HorizontalChipIconPosition.right)
              HorizontalSpace(width: choice.value.horizontalGap ?? 0.03.sw),
            Icon(it, size: choice.value.iconSize, color: choice.value.iconColor),
            //
            if (choice.value.iconPosition == HorizontalChipIconPosition.left) HorizontalSpace(width: choice.value.horizontalGap ?? 0.03.sw),
          ],
        ),
      ) ??
      Utils.nothing;

  double get _fontSize => fontSize ?? 14.sp;

  @override
  Widget build(BuildContext context) {
    return ChipsChoice<HorizontalChip>.multiple(
      value: tags,
      padding: EdgeInsets.zero.merge(padding),
      runSpacing: runSpacing ?? 0.02.sw,
      spacing: spacing ?? 0.02.sw,
      wrapped: wrapped,
      choiceStyle: const C2ChoiceStyle(
        color: Palette.neutralF5,
      ),
      choiceBuilder: (choice) => MyHero(
        elevation: 0.0,
        type: MaterialType.transparency,
        borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(5)),
        tag: choice.value.heroTag ?? '${choice.value.heroTag ?? UniqueId<String>.v4().value}',
        child: Container(
          margin: EdgeInsets.zero.merge(scrollMargin),
          padding: EdgeInsets.symmetric(horizontal: 0.02.sw, vertical: 0.005.sh).merge(widgetPadding),
          decoration: BoxDecoration(
            color: choice.style?.color,
            borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(5)),
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

              if (choice.value.iconPosition == HorizontalChipIconPosition.left) _icon(choice),
              //
              Flexible(
                child: AdaptiveText(
                  choice.label,
                  softWrap: false,
                  fontSize: choice.value.fontSize ?? _fontSize,
                  fontWeight: choice.value.fontWeight ?? fontWeight,
                  minFontSize: choice.value.minFontSize ?? minFontSize,
                  maxFontSize: choice.value.maxFontSize ?? maxFontSize,
                  style: choice.style?.labelStyle,
                ),
              ),
              //
              if (choice.value.iconPosition == HorizontalChipIconPosition.right) _icon(choice),
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
                  fontSize: e.fontSize ?? _fontSize,
                  color: e.labelColor,
                ),
                color: e.backgroundColor ?? Palette.neutralF5,
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
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? heroTag;
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final String label;
  final Color? labelColor;
  final double? maxFontSize;
  final double? minFontSize;
  final double? horizontalGap;
  final HorizontalChipType type;
  final HorizontalChipIconPosition iconPosition;

  HorizontalChip({
    required this.label,
    this.labelColor,
    this.backgroundColor,
    this.heroTag,
    this.fontSize,
    this.fontWeight,
    this.type = HorizontalChipType.none,
    this.minFontSize,
    this.maxFontSize,
    this.icon,
    this.iconSize,
    this.iconColor,
    this.horizontalGap,
    this.iconPosition = HorizontalChipIconPosition.left,
  });
}
