part of popup_dialog.dart;

class PopupDialog extends _$PopupDialog {
  PopupDialog.success({
    String? title,
    Widget? titleWidget,
    String? message,
    Widget? messageWidget,
    Duration? duration,
    bool? autoDismiss,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    void Function(dynamic)? onTap,
    PopupDialogStyle? alertStyle,
    PopupDialogPosition? position,
    void Function(dynamic)? callbackOnShow,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          titleWidget: titleWidget,
          message: message,
          messageWidget: messageWidget,
          popupIcon: Icon(
            Utils.platform_(
              material: Icons.check_circle,
              cupertino: CupertinoIcons.check_mark_circled,
            ),
            color: Palette.successGreen,
          ),
          duration: duration,
          isDismissible: true,
          autoDismiss: autoDismiss,
          blockBackgroundTouch: true,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: false,
          onTap: onTap,
          overlayColor: App.resolveColor(
            Palette.primaryColor,
            dark: Palette.secondaryColor.shade400,
          ),
          overlayOpacity: 0.4,
          alertStyle: alertStyle,
          position: position,
          flushbarListener: listener,
          dismissDirection: PopupDialogDismissDirection.vertical,
          leftBarIndicatorColor: Palette.successGreen,
          callbackOnShow: callbackOnShow,
          callback: callback,
        );

  PopupDialog.info({
    String? title,
    String? message,
    Duration? duration,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    PopupDialogPosition? position,
    void Function(dynamic)? callbackOnShow,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          message: message,
          popupIcon: Icon(
            Utils.platform_(
              material: Icons.info,
              cupertino: CupertinoIcons.info_circle_fill,
            ),
            color: Palette.infoBlue,
          ),
          duration: duration,
          isDismissible: true,
          autoDismiss: true,
          blockBackgroundTouch: false,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: false,
          position: position,
          flushbarListener: listener,
          dismissDirection: PopupDialogDismissDirection.vertical,
          leftBarIndicatorColor: Palette.infoBlue,
          callbackOnShow: callbackOnShow,
          callback: callback,
        );

  PopupDialog.error({
    String? title,
    Widget? titleWidget,
    String? message,
    Widget? messageWidget,
    Duration duration = const Duration(seconds: 8),
    bool? isDismissible,
    bool? autoDismiss,
    TextStyle? titleStyle,
    TextStyle? messageStyle,
    void Function(dynamic)? onTap,
    PopupDialogStyle? alertStyle,
    PopupDialogPosition? position,
    PopupDialogDismissDirection? dismissDirection,
    void Function(dynamic)? callbackOnShow,
    void Function(dynamic)? callback,
    void Function(PopupDialogStatus?)? listener,
  }) : super(
          type: _PopupDialogType.flushbar,
          title: title,
          titleWidget: titleWidget,
          message: message,
          messageWidget: messageWidget,
          popupIcon: Icon(
            Utils.platform_(
              material: Icons.error,
              cupertino: CupertinoIcons.exclamationmark_triangle_fill,
            ),
            color: App.resolveColor(
              Palette.accentColor,
              dark: Palette.accentDark,
            ),
          ),
          duration: duration,
          isDismissible: isDismissible,
          autoDismiss: autoDismiss,
          blockBackgroundTouch: false,
          titleStyle: titleStyle,
          messageStyle: messageStyle,
          shouldIconPulse: true,
          onTap: onTap,
          alertStyle: alertStyle,
          position: position,
          flushbarListener: listener,
          dismissDirection: dismissDirection,
          leftBarIndicatorColor: Palette.errorRed,
          callbackOnShow: callbackOnShow,
          callback: callback,
        );

  PopupDialog.confirmation({
    String? title,
    required String description,
    Icon? popupIcon,
    Color? popupIconColor,
    String postiveButtonText = 'OK',
    String negativeButtonText = 'Cancel',
    Color positiveButtonColor = Colors.white,
    Color negativeButtonColor = Colors.white,
    IconData? positiveButtonIcon,
    IconData? negativeButtonIcon,
    required FutureOr<void> Function()? onPositiveButtonPressed,
    FutureOr<void> Function()? onNegativeButtonPressed,
    bool autoDismiss = true,
    bool isDismissible = true,
    bool awaitFuture = false,
    ConfirmationDialogColor bgColor = ConfirmationDialogColor.kdefault,
  }) : super(
          type: _PopupDialogType.confirmation,
          title: title,
          message: description,
          popupIcon: popupIcon,
          popupIconColor: popupIconColor,
          postiveButtonText: postiveButtonText,
          negativeButtonText: negativeButtonText,
          positiveButtonColor: positiveButtonColor,
          negativeButtonColor: negativeButtonColor,
          positiveButtonIcon: positiveButtonIcon,
          negativeButtonIcon: negativeButtonIcon,
          onPositiveButtonPressed: onPositiveButtonPressed,
          onNegativeButtonPressed: onNegativeButtonPressed,
          autoDismiss: autoDismiss,
          colorScheme: bgColor,
        );
}
