import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render CustomChipWidget.
class CustomChipWidget extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;
  final Color backgroundColor;
  final Color textColor;

  const CustomChipWidget(
    this.text, {
    Key? key,
    this.padding,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.014.sw, vertical: 0.004.sh),
        child: AdaptiveText(
          '$text',
          maxLines: 1,
          minFontSize: 13,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 15.sp,
          ),
        ),
      ),
    );
  }
}
