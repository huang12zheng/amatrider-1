import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

/// A stateless widget to render SenderCardWidget.
class SenderCardWidget extends StatelessWidget {
  final double? height;
  final double? width;

  const SenderCardWidget({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
      child: SizedBox(
        height: height ?? 0.06.sh,
        width: width ?? double.infinity,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
              child: Image.asset(AppAssets.blackAvatar, fit: BoxFit.contain),
            ),
            //
            HorizontalSpace(width: 0.03.sw),
            //
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdaptiveText(
                    'Sender',
                    fontSize: 16.sp,
                    textColor: Colors.grey.shade800,
                    textColorDark: Colors.white24,
                    fontWeight: FontWeight.w400,
                  ),
                  //
                  AdaptiveText(
                    'Racheal Matasky',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
