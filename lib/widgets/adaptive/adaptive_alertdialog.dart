import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render AdaptiveAlertdialog.
// ignore: must_be_immutable
class AdaptiveAlertdialog extends StatelessWidget {
  final double _width;
  final String? title;
  final bool centerTitle;
  final TextStyle? titleTextStyle;
  final Widget? body;
  final bool centerContent;
  final String? content;
  final TextStyle? contentTextStyle;
  final String? firstButtonText;
  final String secondButtonText;
  final String? cupertinoFirstButtonText;
  final String cupertinoSecondButtonText;
  final VoidCallback? onFirstPressed;
  final Color? firstBgColor;
  final Color? firstSplashColor;
  final TextStyle? firstTextStyle;
  final VoidCallback? onSecondPressed;
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
    this.firstButtonText,
    this.secondButtonText = 'Close',
    String? cupertinoFirstButtonText,
    String? cupertinoSecondButtonText,
    this.onFirstPressed,
    this.onSecondPressed,
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
  })  : _width = width ?? 0.85.sw,
        cupertinoFirstButtonText = cupertinoFirstButtonText ?? firstButtonText,
        cupertinoSecondButtonText = secondButtonText,
        assert(isFirstDestructive || isSecondDestructive),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
      ),
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
          contentPadding: EdgeInsets.symmetric(
            horizontal: 0.04.sw,
            vertical: 0.04.sw,
          ).copyWith(top: title != null ? 0.0 : null),
          titleTextStyle: DefaultTextStyle.of(context).style.merge(
              TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)
                  .merge(titleTextStyle)),
        ),
        cupertino: (_, __) => CupertinoAlertDialogData(
          scrollController: ScrollController(),
          actions: [
            cupertinoFirstButtonText?.let(
                  (it) => CupertinoDialogAction(
                    isDefaultAction: isFirstDefaultAction,
                    isDestructiveAction: isFirstDestructive,
                    onPressed: onFirstPressed,
                    child: Text('$it'),
                  ),
                ) ??
                Utils.nothing,
            //
            CupertinoDialogAction(
              isDefaultAction: isSecondDefaultAction,
              isDestructiveAction: isSecondDestructive,
              onPressed: onSecondPressed ?? navigator.pop,
              child: Text('$cupertinoSecondButtonText'),
            ),
          ],
        ),
        title: title?.let(
          (it) => SizedBox(
            width: _width,
            height: 0.03.sh,
            child: Align(
              alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
              child: AdaptiveText(
                '$it',
                softWrap: true,
                maxLines: 1,
                textAlign: centerTitle ? TextAlign.center : TextAlign.start,
                style: Theme.of(context).platform.fold(
                    material: () => null,
                    cupertino: () => DefaultTextStyle.of(context).style.merge(
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600)
                            .merge(titleTextStyle))),
              ),
            ),
          ),
        ),
        content: SizedBox(
          width: _width,
          child: SingleChildScrollView(
            clipBehavior: Clip.antiAlias,
            physics: Utils.physics,
            scrollDirection: Axis.vertical,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                Align(
                  alignment:
                      centerContent ? Alignment.center : Alignment.centerLeft,
                  child: body ??
                      content?.let(
                        (it) => Utils.platform_(
                          material: AdaptiveText(
                            '$content',
                            softWrap: true,
                            wrapWords: true,
                            minFontSize: 14,
                            textAlign: centerContent
                                ? TextAlign.center
                                : TextAlign.start,
                            fontSize: 16.sp,
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
                              fontSize: 16.sp,
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
                              Utils.nothing,
                          //
                          _secondButton(buttonDirection),
                        ])
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                              Flexible(child: _firstButton(buttonDirection)),
                              //
                              firstButtonText?.let((it) =>
                                      HorizontalSpace(width: 0.03.sw)) ??
                                  (materialFirstButton == null
                                      ? const Spacer(flex: 2)
                                      : HorizontalSpace(width: 0.03.sw)),
                              //
                              Flexible(child: _secondButton(buttonDirection)),
                            ]),
                ),
              ],
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
          text: firstButtonText,
          height: 0.09.sw,
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
          onPressed: onFirstPressed,
        ),
      ) ??
      Utils.nothing;

  Widget _secondButton(Axis direction) =>
      materialSecondButton ??
      AdaptiveButton(
        onPressed: () {
          onSecondPressed?.call();
          navigator.pop();
        },
        text: secondButtonText,
        height: 0.09.sw,
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
