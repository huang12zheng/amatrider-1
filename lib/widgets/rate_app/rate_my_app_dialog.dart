library rate_my_app.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'rate_conditions.dart';

class RateMyAppDialog {
  static void periodic(BuildContext context) {
    final rateMyApp = RateMyApp(
      preferencesPrefix: Const.rateMyAppPrefKey,
      minDays: 7,
      minLaunches: 10,
      remindDays: 7,
      remindLaunches: 10,
      googlePlayIdentifier: env.packageName,
      appStoreIdentifier: '1491556149',
    );

    rateMyApp.conditions.add(AlwaysOpenCondition());

    rateMyApp.init().then((_) {
      // if (rateMyApp.shouldOpenDialog) {
      rateMyApp.showStarRateDialog(
        context,
        title: 'Enjoying ${Const.appName}?',
        message: 'Invite friends to share in this experience!',
        // contentBuilder: (context, defaultContent) => content, // This one allows you to change the default dialog content.
        actionsBuilder: (context, stars) {
          return [
            AppOutlinedButton(
              text: 'LATER',
              width: 0.25.w,
              height: 0.045.h,
              fontSize: 17.sp,
              onPressed: () async {
                await rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed);
                Navigator.pop<RateMyAppDialogButton>(context, RateMyAppDialogButton.later);
              },
            ),
            //
            AppButton(
              text: 'OK',
              width: 0.25.w,
              height: 0.045.h,
              fontSize: 17.sp,
              onPressed: () async {
                await rateMyApp.callEvent(RateMyAppEventType.rateButtonPressed);
                // await ToastManager.long('Thanks for the ' + (stars == null || stars <= 0 ? '0' : stars.round().toString()) + ' star(s) !');
                Navigator.pop<RateMyAppDialogButton>(context, RateMyAppDialogButton.rate);
              },
            ),
          ];
        },
        dialogStyle: const DialogStyle(
          titleAlign: TextAlign.center,
          titleStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
          messageAlign: TextAlign.center,
          messagePadding: EdgeInsets.only(bottom: 20),
        ),
        ignoreNativeDialog: App.platform.isAndroid,
        starRatingOptions: const StarRatingOptions(
          allowHalfRating: true,
          minRating: 1,
        ),
        onDismissed: () => rateMyApp.callEvent(RateMyAppEventType.laterButtonPressed),
      );
      // }
    });
  }
}
