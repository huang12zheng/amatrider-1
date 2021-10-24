library popup_dialog.dart;

import 'dart:async';

import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sweetsheet/sweetsheet.dart';

part 'popup_factory.dart';

enum _PopupDialogType { confirmation, input, bottomSheet, flushbar, none }

enum PopupDialogStyle { floating, grounded }

enum PopupDialogPosition { top, bottom }

enum PopupDialogDismissDirection { vertical, horizontal }

enum PopupDialogStatus { showing, isAppearing, isHiding, dimissed }

enum ConfirmationDialogColor {
  kdefault,
  success,
  warning,
  danger,
  nice,
}

class _$PopupDialog {
  final String? title;
  final Widget? titleWidget;
  final String? message;
  final Widget? messageWidget;
  final Icon? popupIcon;
  final Color? popupIconColor;
  final String? postiveButtonText;
  final String? negativeButtonText;
  final bool? negativeButtonVisible;
  final bool? positiveButtonVisible;
  final Color? positiveButtonColor;
  final Color? negativeButtonColor;
  final IconData? positiveButtonIcon;
  final IconData? negativeButtonIcon;
  final FutureOr<void> Function()? onPositiveButtonPressed;
  final FutureOr<void> Function()? onNegativeButtonPressed;
  final Duration? duration;
  final bool? isDismissible;
  final bool? autoDismiss;
  final bool awaitFuture;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final bool? blockBackgroundTouch;
  final Color? backgroundColor;

  // Flushbar
  final TextStyle? titleStyle;
  final TextStyle? messageStyle;
  final bool? shouldIconPulse;
  final double? maxWidth;
  final Widget? mainButton;
  final void Function(dynamic)? onTap;
  final Color? overlayColor;
  final double? overlayBlur;
  final double? overlayOpacity;
  final Color? leftBarIndicatorColor;
  final Function(dynamic)? callbackOnShow;
  final void Function(dynamic)? callback;
  final void Function(PopupDialogStatus?)? flushbarListener;

  // wrappers
  final _PopupDialogType? _type;
  final PopupDialogStyle? alertStyle;
  final PopupDialogPosition? position;
  final PopupDialogDismissDirection? dismissDirection;
  final ConfirmationDialogColor colorScheme;

  const _$PopupDialog({
    this.title,
    this.message,
    this.titleWidget,
    this.messageWidget,
    this.popupIcon,
    this.popupIconColor,
    this.postiveButtonText = 'OK',
    this.negativeButtonText = 'Cancel',
    bool? negativeButtonVisible,
    bool? positiveButtonVisible,
    this.positiveButtonColor,
    this.negativeButtonColor,
    this.positiveButtonIcon,
    this.negativeButtonIcon,
    this.onPositiveButtonPressed,
    this.onNegativeButtonPressed,
    Duration? duration,
    bool? isDismissible,
    bool? autoDismiss,
    this.awaitFuture = false,
    EdgeInsets? margin,
    EdgeInsets? padding,
    BorderRadius? borderRadius,
    bool? blockBackgroundTouch,
    this.backgroundColor,
    this.titleStyle,
    this.messageStyle,
    bool? shouldIconPulse,
    this.maxWidth,
    this.mainButton,
    this.onTap,
    this.callback,
    this.callbackOnShow,
    this.overlayColor,
    double? overlayBlur,
    this.overlayOpacity,
    this.leftBarIndicatorColor,
    _PopupDialogType? type,
    PopupDialogStyle? alertStyle,
    this.position,
    this.flushbarListener,
    PopupDialogDismissDirection? dismissDirection,
    this.colorScheme = ConfirmationDialogColor.kdefault,
  })  : _type = type,
        duration = duration ?? const Duration(seconds: 2, milliseconds: 500),
        margin = margin ?? const EdgeInsets.all(8.0),
        padding = padding ?? const EdgeInsets.all(16.0),
        borderRadius =
            borderRadius ?? const BorderRadius.all(Radius.circular(10.0)),
        negativeButtonVisible = negativeButtonVisible ?? true,
        positiveButtonVisible = positiveButtonVisible ?? true,
        isDismissible = isDismissible ?? true,
        autoDismiss = autoDismiss ?? true,
        blockBackgroundTouch = blockBackgroundTouch ?? true,
        shouldIconPulse = shouldIconPulse ?? true,
        overlayBlur = overlayBlur ?? 0.7,
        alertStyle = alertStyle ?? PopupDialogStyle.floating,
        dismissDirection =
            dismissDirection ?? PopupDialogDismissDirection.horizontal;

  Future<dynamic> render(BuildContext context) async {
    return await _type?.fold(
      flushbar: () async {
        final _bar = Flushbar(
          titleText: title != null && title!.isNotEmpty
              ? AdaptiveText(
                  title!,
                  style: TextStyle(
                    color: App.resolveColor(
                      Palette.text100,
                      dark: Colors.white,
                    ),
                  ).merge(titleStyle),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                )
              : titleWidget,
          messageText: message != null && message!.isNotEmpty
              ? AdaptiveText(
                  message!,
                  style: TextStyle(
                    color: App.resolveColor(
                      Palette.text100,
                      dark: Colors.white,
                    ),
                  ).merge(messageStyle),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                )
              : messageWidget,
          duration: duration,
          icon: popupIcon,
          isDismissible: isDismissible!,
          shouldIconPulse: shouldIconPulse!,
          leftBarIndicatorColor: leftBarIndicatorColor,
          blockBackgroundInteraction: blockBackgroundTouch!,
          backgroundColor: backgroundColor ??
              App.resolveColor(
                Palette.primaryColor.shade400,
                dark: Palette.secondaryColor.shade400,
              )!,
          dismissDirection: dismissDirection!.direction,
          mainButton: mainButton,
          margin: margin!,
          padding: padding!,
          onTap: onTap,
          maxWidth: maxWidth,
          routeBlur: overlayBlur,
          onStatusChanged: (status) => flushbarListener?.call(status?.mapped),
          routeColor: overlayColor?.withOpacity(overlayOpacity!),
          borderRadius: borderRadius,
          flushbarPosition: position?.fold(
                top: FlushbarPosition.TOP,
                bottom: FlushbarPosition.BOTTOM,
              ) ??
              (MediaQuery.of(context).viewInsets.bottom == 0
                  ? FlushbarPosition.BOTTOM
                  : FlushbarPosition.TOP),
          flushbarStyle: alertStyle!.fold(
            floating: FlushbarStyle.FLOATING,
            grounded: FlushbarStyle.GROUNDED,
          ),
        );

        if (callbackOnShow != null)
          return _bar.show(context).then((_) => callback?.call(_));
        else {
          callback?.call(null);
          return _bar.show(context);
        }
      },
      confirmation: () async => getIt<SweetSheet>().show(
        context: context,
        title: title?.let((it) => Text('$it')),
        description: Text('$message'),
        icon: popupIcon?.icon,
        isDismissible: isDismissible!,
        useRootNavigator: false,
        color: colorScheme.fold(
          kdefault: _SheetColor(
            main: App.resolveColor(
              Palette.secondaryColor.shade300,
              dark: Palette.primaryColor.shade400,
            )!,
            accent: App.resolveColor(
              Palette.secondaryColor.shade300,
              dark: Palette.primaryColor.shade400,
            )!,
            icon: popupIconColor ??
                Utils.computeLuminance(Theme.of(context).iconTheme.color!),
          ),
          success: SweetSheetColor.SUCCESS,
          warning: SweetSheetColor.WARNING,
          danger: SweetSheetColor.DANGER,
          nice: SweetSheetColor.NICE,
        ),
        positive: SweetSheetAction(
          title: postiveButtonText!,
          onPressed: () async {
            if (awaitFuture)
              await onPositiveButtonPressed?.call();
            else
              onPositiveButtonPressed?.call();
            if (autoDismiss!) Navigator.pop(context);
          },
          color: positiveButtonColor ??
              Utils.computeLuminance(Theme.of(context).iconTheme.color!),
          icon: positiveButtonIcon,
        ),
        negative: SweetSheetAction(
          title: negativeButtonText!,
          onPressed: () async {
            if (awaitFuture)
              await onNegativeButtonPressed?.call();
            else
              onNegativeButtonPressed?.call();
            if (autoDismiss!) Navigator.pop(context);
          },
          color: negativeButtonColor ??
              Utils.computeLuminance(Theme.of(context).iconTheme.color!),
          icon: negativeButtonIcon,
        ),
      ),
    );
  }
}

extension on _PopupDialogType {
  T? fold<T>({
    T Function()? flushbar,
    T Function()? confirmation,
    T? bottomSheet,
    T? input,
  }) {
    switch (this) {
      case _PopupDialogType.flushbar:
        return flushbar?.call();
      case _PopupDialogType.confirmation:
        return confirmation?.call();
      case _PopupDialogType.bottomSheet:
        return bottomSheet;
      case _PopupDialogType.input:
        return input;
      case _PopupDialogType.none:
      default:
      // return f;
    }
  }
}

extension on PopupDialogStyle {
  T fold<T>({
    required T floating,
    T? grounded,
  }) {
    switch (this) {
      case PopupDialogStyle.grounded:
        return grounded ?? floating!;
      case PopupDialogStyle.floating:
      default:
        return floating!;
    }
  }
}

extension on PopupDialogDismissDirection {
  FlushbarDismissDirection get direction {
    switch (this) {
      case PopupDialogDismissDirection.horizontal:
        return FlushbarDismissDirection.HORIZONTAL;
      case PopupDialogDismissDirection.vertical:
      default:
        return FlushbarDismissDirection.VERTICAL;
    }
  }
}

extension on PopupDialogPosition {
  T fold<T>({
    T? top,
    required T bottom,
  }) {
    switch (this) {
      case PopupDialogPosition.top:
        return top ?? bottom;
      case PopupDialogPosition.bottom:
      default:
        return bottom;
    }
  }
}

extension XPopupDialogStatus on PopupDialogStatus {
  T? fold<T>({
    T? Function()? showing,
    T? Function()? appearing,
    T? Function()? hiding,
    T? Function()? dismissed,
  }) {
    switch (this) {
      case PopupDialogStatus.showing:
        return showing?.call();
      case PopupDialogStatus.isAppearing:
        return appearing?.call();
      case PopupDialogStatus.isHiding:
        return hiding?.call();
      case PopupDialogStatus.dimissed:
        return dismissed?.call();
    }
  }
}

extension on FlushbarStatus {
  PopupDialogStatus? get mapped {
    switch (this) {
      case FlushbarStatus.SHOWING:
        return PopupDialogStatus.showing;
      case FlushbarStatus.IS_APPEARING:
        return PopupDialogStatus.isAppearing;
      case FlushbarStatus.IS_HIDING:
        return PopupDialogStatus.isHiding;
      case FlushbarStatus.DISMISSED:
        return PopupDialogStatus.dimissed;
    }
  }
}

class _SheetColor extends CustomSheetColor {
  @override
  final Color main;

  @override
  final Color accent;

  @override
  final Color icon;

  _SheetColor({
    required this.main,
    required this.accent,
    required this.icon,
  }) : super(main: main, accent: accent, icon: icon);
}

extension XPopupAlertDialogColorScheme on ConfirmationDialogColor {
  T fold<T>({
    required T kdefault,
    required T success,
    required T warning,
    required T danger,
    required T nice,
  }) {
    switch (this) {
      case ConfirmationDialogColor.success:
        return success;
      case ConfirmationDialogColor.warning:
        return warning;
      case ConfirmationDialogColor.danger:
        return danger;
      case ConfirmationDialogColor.nice:
        return nice;
      case ConfirmationDialogColor.kdefault:
      default:
        return kdefault;
    }
  }
}
