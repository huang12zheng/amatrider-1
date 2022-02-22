import 'dart:async';

import 'package:amatrider/manager/theme/theme.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render AdaptiveAlertdialog.
// ignore: must_be_immutable
class AdaptiveAlertdialog<B extends Object?> extends StatelessWidget {
  final double _width;

  final double? maxHeight;
  final Future<B> Function()? onFirstPressedFuture;
  final B Function()? onFirstPressed;
  final Future<B> Function()? onSecondPressedFuture;
  final B Function()? onSecondPressed;
  final List<Widget>? body;
  final Axis buttonDirection;
  final String? content;
  final Alignment contentAlignment;
  final double? contentFontSize;
  final EdgeInsets? contentPadding;
  final TextAlign contentTextAlignment;
  final TextStyle? contentTextStyle;
  final Widget? cupertinoFirstButton;
  final String? cupertinoFirstButtonText;
  final Widget? cupertinoSecondButton;
  final String cupertinoSecondButtonText;
  final B? defaultValue;
  final bool disableSecondButton;
  final Color? firstBgColor;
  final double? firstButtonHeight;
  final String? firstButtonText;
  final Color? firstSplashColor;
  final TextStyle? firstTextStyle;
  final bool isFirstDefaultAction;
  final bool isFirstDestructive;
  final bool isSecondDefaultAction;
  final bool isSecondDestructive;
  final bool material;
  final EdgeInsets? materialActionsPadding;
  final double materialButtonHorizontalGap;
  final double materialButtonVerticalGap;
  final Widget? materialFirstButton;
  final Widget? materialSecondButton;
  final double minContentFontSize;
  final Color? secondBgColor;
  final double? secondButtonHeight;
  final String secondButtonText;
  final Color? secondSplashColor;
  final TextStyle? secondTextStyle;
  final String? title;
  final Alignment titleAlignment;
  final double? titleHeight;
  final EdgeInsetsGeometry? titlePadding;
  final TextAlign titleTextAlignment;
  final TextStyle? titleTextStyle;
  final Widget? titleWidget;
  final bool useMaterialActions;
  final bool autoPopFirstButton;
  final bool autoPopSecondButton;

  AdaptiveAlertdialog({
    Key? key,
    double? width,
    this.maxHeight,
    this.title,
    this.titleHeight,
    this.titleWidget,
    this.titlePadding,
    this.titleAlignment = Alignment.center,
    this.titleTextAlignment = TextAlign.center,
    this.contentAlignment = Alignment.center,
    this.contentTextAlignment = TextAlign.center,
    this.titleTextStyle,
    this.body,
    this.content,
    this.contentPadding,
    this.contentTextStyle,
    this.contentFontSize,
    this.minContentFontSize = 14,
    this.firstButtonText,
    this.firstButtonHeight,
    this.defaultValue,
    this.secondButtonText = 'Close',
    this.secondButtonHeight,
    this.disableSecondButton = false,
    String? cupertinoFirstButtonText,
    String? cupertinoSecondButtonText,
    this.onFirstPressed,
    this.onFirstPressedFuture,
    this.onSecondPressed,
    this.onSecondPressedFuture,
    this.firstBgColor,
    this.secondBgColor,
    this.firstSplashColor,
    this.secondSplashColor,
    this.firstTextStyle,
    this.secondTextStyle,
    this.isFirstDefaultAction = false,
    this.isSecondDefaultAction = false,
    this.isFirstDestructive = true,
    this.isSecondDestructive = false,
    this.buttonDirection = Axis.vertical,
    this.materialFirstButton,
    this.materialSecondButton,
    this.cupertinoFirstButton,
    this.cupertinoSecondButton,
    double? materialButtonVerticalGap,
    double? materialButtonHorizontalGap,
    this.material = false,
    this.useMaterialActions = false,
    this.materialActionsPadding,
    this.autoPopFirstButton = true,
    this.autoPopSecondButton = true,
  })  : assert((onFirstPressed == null && onFirstPressedFuture != null) ||
            (onFirstPressed != null && onFirstPressedFuture == null) ||
            (onFirstPressed == null && onFirstPressedFuture == null)),
        assert((onSecondPressed == null && onSecondPressedFuture != null) ||
            (onSecondPressed != null && onSecondPressedFuture == null) ||
            (onSecondPressed == null && onSecondPressedFuture == null)),
        _width = width ?? 0.63.sw,
        cupertinoFirstButtonText = cupertinoFirstButtonText ?? firstButtonText,
        cupertinoSecondButtonText = cupertinoSecondButtonText ?? secondButtonText,
        assert(isFirstDestructive || isSecondDestructive),
        materialButtonVerticalGap = materialButtonVerticalGap ?? 0.015.h,
        materialButtonHorizontalGap = materialButtonHorizontalGap ?? 0.03.w,
        super(key: key);

  Widget get _title => SizedBox(
        width: _width,
        height: _titleHeight,
        child: Material(
          type: MaterialType.transparency,
          textStyle: titleTextStyle,
          child: Align(
            alignment: titleAlignment,
            child: title?.let(
                  (it) => AdaptiveText(
                    '$it',
                    softWrap: true,
                    maxLines: 1,
                    textAlign: titleTextAlignment,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    textColor: Palette.text100,
                    textColorDark: Palette.text100Dark,
                    style: titleTextStyle,
                    isDefault: Utils.platform_(cupertino: true),
                  ),
                ) ??
                titleWidget,
          ),
        ),
      );

  double get _titleHeight => titleHeight ?? 0.03.h;

  Widget _content(BuildContext c) => SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        physics: Utils.physics,
        scrollDirection: Axis.vertical,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: LimitedBox(
          maxHeight: maxHeight ?? double.infinity,
          child: SizedBox(
            width: _width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...body ??
                    [
                      Flexible(
                        child: SingleChildScrollView(
                          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                          child: Align(
                            alignment: contentAlignment,
                            child: content?.let(
                                  (it) => AdaptiveText(
                                    '$content',
                                    softWrap: true,
                                    wrapWords: true,
                                    minFontSize: minContentFontSize,
                                    textAlign: contentTextAlignment,
                                    fontSize: contentFontSize ?? 16.sp,
                                    fontWeight: FontWeight.w400,
                                    style: contentTextStyle,
                                    isDefault: Utils.platform_(cupertino: true),
                                  ),
                                ) ??
                                Utils.nothing,
                          ),
                        ),
                      ),
                    ],
                //
                if (!useMaterialActions)
                  if (body != null || content != null) Theme.of(c).platform.material(VerticalSpace(height: 0.07.sw)) ?? Utils.nothing,
                //
                if (!useMaterialActions)
                  App.platform.fold(
                    cupertino: () => const SizedBox.shrink(),
                    material: () => buttonDirection == Axis.vertical
                        ? Column(children: [
                            _firstButton(buttonDirection),
                            //
                            firstButtonText?.let((it) => VerticalSpace(height: materialButtonVerticalGap)) ??
                                (materialFirstButton != null ? VerticalSpace(height: materialButtonVerticalGap) : Utils.nothing),
                            Utils.nothing,
                            //
                            if (!disableSecondButton) _secondButton(buttonDirection),
                          ])
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(child: _firstButton(buttonDirection)),
                              //
                              firstButtonText?.let((it) => HorizontalSpace(width: materialButtonHorizontalGap)) ??
                                  (materialFirstButton == null
                                      ? const Spacer(flex: 2)
                                      : HorizontalSpace(width: materialButtonHorizontalGap)),
                              //
                              if (!disableSecondButton) Flexible(child: _secondButton(buttonDirection)),
                            ],
                          ),
                  ),
              ],
            ),
          ),
        ),
      );

  Widget _firstButton(Axis direction) =>
      materialFirstButton ??
      firstButtonText?.let(
        (it) => AdaptiveButton(
          onPressed: () async {
            if (autoPopFirstButton)
              unawaited(navigator.pop((await onFirstPressedFuture?.call()) ?? onFirstPressed?.call() ?? defaultValue));
            else
              (await onFirstPressedFuture?.call()) ?? onFirstPressed?.call();
          },
          text: firstButtonText,
          height: firstButtonHeight ?? 0.045.h,
          cupertinoHeight: 0.028.sh,
          fontSize: 16.sp,
          textColor: Colors.white,
          padding: App.platform.cupertino(EdgeInsets.zero),
          textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing).merge(firstTextStyle),
          backgroundColor: firstBgColor ?? App.resolveColor(Palette.accentColor, dark: Colors.transparent),
          splashColor: firstSplashColor ?? App.resolveColor(Colors.white24, dark: Colors.grey.shade800),
          side: Utils.foldTheme(
            light: () => null,
            dark: () => const BorderSide(
              color: Palette.accentColor,
            ),
          ),
        ),
      ) ??
      Utils.nothing;

  MaterialAlertDialogData _materialAlertDialogData(BuildContext c) => MaterialAlertDialogData(
        scrollable: false,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Utils.buttonRadius),
        ),
        backgroundColor: Theme.of(c).scaffoldBackgroundColor,
        titlePadding: titlePadding ??
            EdgeInsets.symmetric(
              horizontal: 0.04.sw,
              vertical: 0.04.sw,
            ),
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
          vertical: App.sidePadding,
        ).copyWith(top: title != null ? 0.0 : null).merge(contentPadding),
        titleTextStyle: DefaultTextStyle.of(c).style.merge(TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600).merge(titleTextStyle)),
      );

  Widget _secondButton(Axis direction) =>
      materialSecondButton ??
      AdaptiveButton(
        onPressed: () async {
          if (autoPopSecondButton)
            unawaited(navigator.pop((await onSecondPressedFuture?.call()) ?? onSecondPressed?.call() ?? defaultValue));
          else
            (await onSecondPressedFuture?.call()) ?? onSecondPressed?.call();
        },
        text: secondButtonText,
        height: secondButtonHeight ?? 0.045.h,
        cupertinoHeight: 0.028.sh,
        fontSize: 16.sp,
        textColor: App.resolveColor(Palette.accentColor),
        textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing).merge(secondTextStyle),
        backgroundColor: secondBgColor ?? Colors.transparent,
        splashColor: secondSplashColor ?? App.resolveColor(Colors.grey.shade300, dark: Colors.white12),
        side: Utils.foldTheme(
          light: () => null,
          dark: () => BorderSide(
            color: App.resolveColor(Colors.white70)!,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(color: App.resolveColor(Palette.text100, dark: Palette.text100Dark)),
      child: MediaQuery.removeViewInsets(
        context: context,
        removeLeft: true,
        removeRight: true,
        child: material
            ? AlertDialog(
                scrollable: _materialAlertDialogData(context).scrollable!,
                clipBehavior: _materialAlertDialogData(context).clipBehavior!,
                elevation: _materialAlertDialogData(context).elevation!,
                shape: _materialAlertDialogData(context).shape!,
                backgroundColor: _materialAlertDialogData(context).backgroundColor!,
                titlePadding: _materialAlertDialogData(context).titlePadding!,
                insetPadding: _materialAlertDialogData(context).insetPadding!,
                contentPadding: contentPadding ?? _materialAlertDialogData(context).contentPadding!,
                titleTextStyle: _materialAlertDialogData(context).titleTextStyle!,
                contentTextStyle: contentTextStyle,
                title: _title,
                content: _content(context),
                actionsPadding: EdgeInsets.zero.merge(materialActionsPadding),
                actions: [
                  if (useMaterialActions)
                    firstButtonText?.let(
                          (it) => TextButton(
                            style: TextButton.styleFrom(
                              splashFactory: CustomSplashFactory(
                                splashColor: App.resolveColor(Colors.black12, dark: Colors.grey.shade800),
                              ),
                            ),
                            onPressed: () async =>
                                navigator.pop((await onFirstPressedFuture?.call()) ?? onFirstPressed?.call() ?? defaultValue),
                            child: AdaptiveText(
                              '$firstButtonText',
                              maxLines: 1,
                              fontSize: 17.sp,
                              isDefault: true,
                              fontWeight: FontWeight.w600,
                              softWrap: false,
                              wrapWords: false,
                            ),
                          ),
                        ) ??
                        materialFirstButton ??
                        Utils.nothing,
                  //
                  if (useMaterialActions)
                    materialSecondButton ??
                        TextButton(
                          style: TextButton.styleFrom(
                            splashFactory: CustomSplashFactory(
                              splashColor: App.resolveColor(Colors.black12, dark: Colors.grey.shade800),
                            ),
                          ),
                          onPressed: () async =>
                              navigator.pop((await onSecondPressedFuture?.call()) ?? onSecondPressed?.call() ?? defaultValue),
                          child: AdaptiveText(
                            secondButtonText,
                            maxLines: 1,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w600,
                            isDefault: true,
                            softWrap: false,
                            wrapWords: false,
                            textColor: Palette.accentColor,
                            textColorDark: Palette.accentColor,
                          ),
                        ),
                ],
              )
            : Theme(
                data: Utils.platform_(
                  cupertino: App.isDarkMode(context) ? ThemeData.dark() : ThemeData.light(),
                  material: context.read<ThemeCubit>().state.themeData(),
                )!,
                child: PlatformAlertDialog(
                  widgetKey: key,
                  title: _title,
                  content: _content(context),
                  material: (_, __) => _materialAlertDialogData(context),
                  cupertino: (_, __) => CupertinoAlertDialogData(
                    scrollController: ScrollController(),
                    insetAnimationCurve: Curves.easeInOutCubic,
                    insetAnimationDuration: const Duration(milliseconds: 1500),
                    actions: [
                      if (cupertinoFirstButton != null) cupertinoFirstButton!,
                      //
                      if (cupertinoFirstButtonText != null)
                        CupertinoDialogAction(
                          isDefaultAction: isFirstDefaultAction,
                          isDestructiveAction: isFirstDestructive,
                          onPressed: () async {
                            if (autoPopFirstButton)
                              unawaited(navigator.pop((await onFirstPressedFuture?.call()) ?? onFirstPressed?.call() ?? defaultValue));
                            else
                              (await onFirstPressedFuture?.call()) ?? onFirstPressed?.call();
                          },
                          child: Text('$cupertinoFirstButtonText'),
                        ),
                      //
                      if (!disableSecondButton)
                        cupertinoSecondButton ??
                            CupertinoDialogAction(
                              isDefaultAction: isSecondDefaultAction,
                              isDestructiveAction: isSecondDestructive,
                              onPressed: () async {
                                if (autoPopSecondButton)
                                  unawaited(
                                      navigator.pop((await onSecondPressedFuture?.call()) ?? onSecondPressed?.call() ?? defaultValue));
                                else
                                  (await onSecondPressedFuture?.call()) ?? onSecondPressed?.call();
                              },
                              child: Text('$cupertinoSecondButtonText'),
                            ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
