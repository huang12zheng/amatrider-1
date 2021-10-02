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
  final String? content;
  final TextStyle? contentTextStyle;
  final String? firstButtonText;
  final String? secondButtonText;
  final VoidCallback? onFirstPressed;
  final Color? firstBgColor;
  final Color? firstSplashColor;
  final TextStyle? firstTextStyle;
  final VoidCallback? onSecondPressed;
  final Color? secondBgColor;
  final Color? secondSplashColor;
  final TextStyle? secondTextStyle;
  final bool useDestructiveAction;

  AdaptiveAlertdialog({
    Key? key,
    double? width,
    this.title,
    this.centerTitle = true,
    this.titleTextStyle,
    this.body,
    this.content,
    this.contentTextStyle,
    this.firstButtonText,
    this.secondButtonText = 'Close',
    this.onFirstPressed,
    this.onSecondPressed,
    this.firstBgColor,
    this.secondBgColor,
    this.firstSplashColor,
    this.secondSplashColor,
    this.firstTextStyle,
    this.secondTextStyle,
    this.useDestructiveAction = false,
  })  : _width = width ?? 0.85.sw,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformAlertDialog(
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
        titleTextStyle: titleTextStyle,
      ),
      cupertino: (_, __) => CupertinoAlertDialogData(
        scrollController: ScrollController(),
        actions: [
          firstButtonText?.let(
                (it) => CupertinoDialogAction(
                  isDefaultAction: true,
                  onPressed: onFirstPressed,
                  child: Text('$it'),
                ),
              ) ??
              Utils.nothing,
          //
          secondButtonText?.let(
                (it) => CupertinoDialogAction(
                  isDefaultAction: true,
                  isDestructiveAction: useDestructiveAction,
                  onPressed: onSecondPressed ?? navigator.pop,
                  child: Text('$it'),
                ),
              ) ??
              Utils.nothing,
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
              style: Theme.of(context).platform.fold(
                    material: () => null,
                    cupertino: () => titleTextStyle,
                  ),
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
              body ??
                  content?.let(
                    (it) => AdaptiveText(
                      '$content',
                      softWrap: true,
                      wrapWords: true,
                      minFontSize: 14,
                      style: TextStyle(fontSize: 17.sp).merge(contentTextStyle),
                    ),
                  ) ??
                  Utils.nothing,
              //
              if (body != null || content != null)
                VerticalSpace(height: 0.07.sw),
              //
              ...App.platform.fold(
                cupertino: () => [const SizedBox.shrink()],
                material: () => [
                  firstButtonText?.let(
                        (it) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AdaptiveButton(
                              text: firstButtonText,
                              textColor: Colors.white,
                              fontSize: 19.sp,
                              padding: App.platform.cupertino(EdgeInsets.zero),
                              textStyle: const TextStyle(
                                      letterSpacing: Utils.labelLetterSpacing)
                                  .merge(firstTextStyle),
                              backgroundColor: firstBgColor ??
                                  App.resolveColor(Palette.accentColor,
                                      dark: Colors.transparent),
                              splashColor: firstSplashColor ??
                                  App.resolveColor(Colors.white24,
                                      dark: Colors.grey.shade800),
                              side: Utils.foldTheme(
                                light: () => null,
                                dark: () => const BorderSide(
                                  color: Palette.accentColor,
                                ),
                              ),
                              onPressed: onFirstPressed,
                            ),
                            //
                            VerticalSpace(height: 0.03.sw),
                          ],
                        ),
                      ) ??
                      Utils.nothing,
                  //
                  secondButtonText?.let(
                        (it) => AdaptiveButton(
                          onPressed: onSecondPressed ?? navigator.pop,
                          text: it,
                          textColor: App.resolveColor(Palette.accentColor),
                          textStyle: const TextStyle(
                                  letterSpacing: Utils.labelLetterSpacing)
                              .merge(secondTextStyle),
                          backgroundColor: secondBgColor ?? Colors.transparent,
                          splashColor: secondSplashColor ??
                              App.resolveColor(Colors.grey.shade300,
                                  dark: Colors.white12),
                          side: Utils.foldTheme(
                            light: () => null,
                            dark: () => BorderSide(
                              color: App.resolveColor(Colors.white70)!,
                            ),
                          ),
                        ),
                      ) ??
                      Utils.nothing,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
