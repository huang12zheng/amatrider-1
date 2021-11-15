import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render AdaptiveAlertdialog.
// ignore: must_be_immutable
class AdaptiveAlertdialog<B extends Object?> extends StatelessWidget {
  final double _width;
  final String? title;
  final bool centerTitle;
  final TextStyle? titleTextStyle;
  final Widget? body;
  final bool centerContent;
  final String? content;
  final double? contentFonSize;
  final double minContentFonSize;
  final TextStyle? contentTextStyle;
  final B? defaultValue;
  final String? firstButtonText;
  final double? firstButtonHeight;
  final String secondButtonText;
  final double? secondButtonHeight;
  final bool disableSecondButton;
  final String? cupertinoFirstButtonText;
  final String cupertinoSecondButtonText;
  final Future<B> Function()? onFirstPressedFuture;
  final B Function()? onFirstPressed;
  final Color? firstBgColor;
  final Color? firstSplashColor;
  final TextStyle? firstTextStyle;
  final Future<B> Function()? onSecondPressedFuture;
  final B Function()? onSecondPressed;
  final Color? secondBgColor;
  final Color? secondSplashColor;
  final bool isFirstDefaultAction;
  final bool isSecondDefaultAction;
  final bool isFirstDestructive;
  final bool isSecondDestructive;
  final TextStyle? secondTextStyle;
  final Axis buttonDirection;
  final Widget? materialFirstButton;
  final Widget? materialSecondButton;
  final Widget? cupertinoFirstButton;
  final Widget? cupertinoSecondButton;

  AdaptiveAlertdialog({
    Key? key,
    double? width,
    this.title,
    this.centerTitle = true,
    this.centerContent = true,
    this.titleTextStyle,
    this.body,
    this.content,
    this.contentTextStyle,
    this.contentFonSize,
    this.minContentFonSize = 14,
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
  })  : assert((onFirstPressed == null && onFirstPressedFuture != null) ||
            (onFirstPressed != null && onFirstPressedFuture == null) ||
            (onFirstPressed == null && onFirstPressedFuture == null)),
        assert((onSecondPressed == null && onSecondPressedFuture != null) ||
            (onSecondPressed != null && onSecondPressedFuture == null) ||
            (onSecondPressed == null && onSecondPressedFuture == null)),
        _width = width ?? 0.63.sw,
        cupertinoFirstButtonText = cupertinoFirstButtonText ?? firstButtonText,
        cupertinoSecondButtonText =
            cupertinoSecondButtonText ?? secondButtonText,
        assert(isFirstDestructive || isSecondDestructive),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
      ),
      child: MediaQuery.removeViewInsets(
        context: context,
        removeLeft: true,
        removeRight: true,
        child: PlatformAlertDialog(
          widgetKey: key,
          material: (_, __) => MaterialAlertDialogData(
            scrollable: false,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Utils.buttonRadius),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            titlePadding: EdgeInsets.symmetric(
              horizontal: 0.04.sw,
              vertical: 0.04.sw,
            ),
            insetPadding: EdgeInsets.zero,
            contentPadding: EdgeInsets.symmetric(
              horizontal: App.sidePadding,
              vertical: App.sidePadding,
            ).copyWith(top: title != null ? 0.0 : null),
            titleTextStyle: DefaultTextStyle.of(context).style.merge(
                TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)
                    .merge(titleTextStyle)),
          ),
          cupertino: (_, __) => CupertinoAlertDialogData(
            scrollController: ScrollController(),
            insetAnimationCurve: Curves.easeInOutCubic,
            insetAnimationDuration: const Duration(milliseconds: 1500),
            actions: [
              cupertinoFirstButtonText?.let(
                    (it) => CupertinoDialogAction(
                      isDefaultAction: isFirstDefaultAction,
                      isDestructiveAction: isFirstDestructive,
                      onPressed: () async => navigator.pop(
                          (await onFirstPressedFuture?.call()) ??
                              onFirstPressed?.call() ??
                              defaultValue),
                      child: Text('$it'),
                    ),
                  ) ??
                  cupertinoFirstButton ??
                  Utils.nothing,
              //
              if (!disableSecondButton)
                cupertinoSecondButton ??
                    CupertinoDialogAction(
                      isDefaultAction: isSecondDefaultAction,
                      isDestructiveAction: isSecondDestructive,
                      onPressed: () async => navigator.pop(
                          (await onSecondPressedFuture?.call()) ??
                              onSecondPressed?.call() ??
                              defaultValue),
                      child: Text('$cupertinoSecondButtonText'),
                    ),
            ],
          ),
          title: title?.let(
            (it) => SizedBox(
              width: _width,
              height: 0.03.sh,
              child: Material(
                type: MaterialType.transparency,
                textStyle: titleTextStyle,
                child: Align(
                  alignment:
                      centerTitle ? Alignment.center : Alignment.centerLeft,
                  child: AdaptiveText(
                    '$it',
                    softWrap: true,
                    maxLines: 1,
                    textAlign: centerTitle ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: App.resolveColor(Palette.text100,
                          dark: Palette.text100Dark),
                    ).merge(titleTextStyle),
                  ),
                ),
              ),
            ),
          ),
          content: SingleChildScrollView(
            clipBehavior: Clip.antiAlias,
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: SizedBox(
              width: _width,
              child: Column(
                children: [
                  body ??
                      Align(
                        alignment: centerContent
                            ? Alignment.center
                            : Alignment.centerLeft,
                        child: content?.let(
                              (it) => Utils.platform_(
                                material: AdaptiveText(
                                  '$content',
                                  softWrap: true,
                                  wrapWords: true,
                                  minFontSize: minContentFonSize,
                                  textAlign: centerContent
                                      ? TextAlign.center
                                      : TextAlign.start,
                                  fontSize: contentFonSize ?? 16.sp,
                                  fontWeight: FontWeight.w400,
                                  style: contentTextStyle,
                                ),
                                cupertino: Text(
                                  '$content',
                                  softWrap: true,
                                  textAlign: centerContent
                                      ? TextAlign.center
                                      : TextAlign.start,
                                  style: TextStyle(
                                    fontSize: contentFonSize ?? 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ).merge(contentTextStyle),
                                ),
                              ),
                            ) ??
                            Utils.nothing,
                      ),
                  //
                  if (body != null || content != null)
                    Theme.of(context)
                            .platform
                            .material(VerticalSpace(height: 0.07.sw)) ??
                        Utils.nothing,
                  //
                  App.platform.fold(
                    cupertino: () => const SizedBox.shrink(),
                    material: () => buttonDirection == Axis.vertical
                        ? Column(children: [
                            _firstButton(buttonDirection),
                            //
                            firstButtonText?.let(
                                    (it) => VerticalSpace(height: 0.05.sw)) ??
                                (materialFirstButton != null
                                    ? VerticalSpace(height: 0.05.sw)
                                    : Utils.nothing),
                            Utils.nothing,
                            //
                            if (!disableSecondButton)
                              _secondButton(buttonDirection),
                          ])
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Flexible(child: _firstButton(buttonDirection)),
                                //
                                firstButtonText?.let((it) =>
                                        HorizontalSpace(width: 0.03.sw)) ??
                                    (materialFirstButton == null
                                        ? const Spacer(flex: 2)
                                        : HorizontalSpace(width: 0.03.sw)),
                                //
                                if (!disableSecondButton)
                                  Flexible(
                                      child: _secondButton(buttonDirection)),
                              ]),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _firstButton(Axis direction) =>
      materialFirstButton ??
      firstButtonText?.let(
        (it) => AdaptiveButton(
          onPressed: () async => navigator.pop(
              (await onFirstPressedFuture?.call()) ??
                  onFirstPressed?.call() ??
                  defaultValue),
          text: firstButtonText,
          height: firstButtonHeight ?? 0.045.h,
          cupertinoHeight: 0.028.sh,
          fontSize: 15.sp,
          textColor: Colors.white,
          padding: App.platform.cupertino(EdgeInsets.zero),
          textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing)
              .merge(firstTextStyle),
          backgroundColor: firstBgColor ??
              App.resolveColor(Palette.accentColor, dark: Colors.transparent),
          splashColor: firstSplashColor ??
              App.resolveColor(Colors.white24, dark: Colors.grey.shade800),
          side: Utils.foldTheme(
            light: () => null,
            dark: () => const BorderSide(
              color: Palette.accentColor,
            ),
          ),
        ),
      ) ??
      Utils.nothing;

  Widget _secondButton(Axis direction) =>
      materialSecondButton ??
      AdaptiveButton(
        onPressed: () async => navigator.pop(
            (await onSecondPressedFuture?.call()) ??
                onSecondPressed?.call() ??
                defaultValue),
        text: secondButtonText,
        height: secondButtonHeight ?? 0.045.h,
        cupertinoHeight: 0.028.sh,
        fontSize: 15.sp,
        textColor: App.resolveColor(Palette.accentColor),
        textStyle: const TextStyle(letterSpacing: Utils.labelLetterSpacing)
            .merge(secondTextStyle),
        backgroundColor: secondBgColor ?? Colors.transparent,
        splashColor: secondSplashColor ??
            App.resolveColor(Colors.grey.shade300, dark: Colors.white12),
        side: Utils.foldTheme(
          light: () => null,
          dark: () => BorderSide(
            color: App.resolveColor(Colors.white70)!,
          ),
        ),
      );
}
