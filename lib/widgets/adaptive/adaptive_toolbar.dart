import 'package:amatrider/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AdaptiveToolbar {
  final Key? key;
  final String title;
  final Widget headline;
  final Widget? leadingIcon;
  final TextStyle? titleStyle;
  final bool centerTitle;
  final bool implyLeading;
  final bool? showCustomLeading;
  final VoidCallback? leadingAction;
  final double elevation;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? height;
  final Color? backgroundColor;
  final Color? buttonColor;
  final List<Widget> actions;
  final String? tooltip;
  final String? semantics;
  // Cupertino
  final bool cupertinoImplyLeading;
  final bool implyMiddle;
  final String cupertinoLeading;
  final TextStyle? cupertinoLeadingStyle;
  final String? previousPageTitle;
  final Brightness? brightness;
  final EdgeInsetsDirectional? padding;
  final bool transitionBetweenRoutes;
  // Adaptive
  final MaterialAppBarData Function(BuildContext, PlatformTarget)? material;
  final CupertinoNavigationBarData Function(BuildContext, PlatformTarget)?
      cupertino;

  const AdaptiveToolbar({
    this.key,
    this.title = '',
    this.headline = const SizedBox.shrink(),
    this.leadingIcon,
    this.titleStyle,
    this.centerTitle = true,
    this.implyLeading = true,
    this.showCustomLeading,
    this.leadingAction,
    this.elevation = 0.0,
    this.fontSize,
    this.fontWeight,
    this.height,
    this.backgroundColor,
    this.buttonColor,
    this.actions = const [],
    this.tooltip,
    this.semantics,
    this.cupertinoImplyLeading = true,
    this.implyMiddle = false,
    this.cupertinoLeading = 'Close',
    this.cupertinoLeadingStyle,
    this.padding,
    this.previousPageTitle,
    this.brightness,
    this.transitionBetweenRoutes = true,
    this.material,
    this.cupertino,
  });

  Widget get _title => Visibility(
        visible: !title.isNullOrBlank,
        replacement: headline,
        child: AutoSizeText(
          title,
          style: fontSize != null && fontSize! >= 0.0
              ? TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: fontSize,
                  color: App.resolveColor(
                    Palette.text100,
                    dark: Palette.headingDark,
                  )).merge(titleStyle)
              : TextStyle(
                  fontWeight: FontWeight.w600,
                  color: App.resolveColor(
                    Palette.text100,
                    dark: Palette.headingDark,
                  )).merge(titleStyle),
          wrapWords: false,
          softWrap: false,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      );

  Widget? get _materialLeading => showCustomLeading ??
          navigator.canPopSelfOrChildren
      ? Semantics.fromProperties(
          properties: SemanticsProperties(
            label: tooltip,
            hint: tooltip,
            button: true,
          ),
          child: Tooltip(
            message: tooltip ?? 'Back',
            child: IconButton(
              icon: leadingIcon ?? const Icon(Icons.keyboard_backspace_rounded),
              onPressed: leadingAction ?? navigator.pop,
              color: buttonColor ??
                  Utils.computeLuminance(
                    Theme.of(App.context).scaffoldBackgroundColor,
                  ),
            ),
          ),
        )
      : null;

  Widget get _cupertinoLeading => Tooltip(
        message: tooltip ?? 'Close',
        child: GestureDetector(
          onTap: leadingAction ?? navigator.pop,
          child: AutoSizeText(
            cupertinoLeading,
            style: cupertinoLeadingStyle ??
                TextStyle(
                  color: Utils.computeLuminance(
                      Theme.of(App.context).scaffoldBackgroundColor),
                ),
          ),
        ),
      );

  PlatformAppBar build() {
    return PlatformAppBar(
      widgetKey: key,
      automaticallyImplyLeading: implyLeading,
      backgroundColor: backgroundColor,
      trailingActions: actions,
      material: material ??
          (_, __) => MaterialAppBarData(
                toolbarHeight: height ?? kToolbarHeight,
                titleTextStyle: titleStyle,
                automaticallyImplyLeading: implyLeading,
                centerTitle: centerTitle,
                elevation: elevation,
                backgroundColor: backgroundColor ?? Colors.transparent,
                actions: actions,
                leading: _materialLeading,
                title: _title,
              ),
      cupertino: cupertino ??
          (_, __) => CupertinoNavigationBarData(
                backgroundColor: backgroundColor?.withAlpha(254),
                automaticallyImplyLeading: cupertinoImplyLeading,
                automaticallyImplyMiddle: implyMiddle,
                padding: padding,
                previousPageTitle: previousPageTitle,
                brightness: brightness,
                transitionBetweenRoutes: transitionBetweenRoutes,
                title: !implyMiddle ? _title : null,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions,
                ),
                leading: cupertinoImplyLeading
                    ? null
                    : showCustomLeading ?? navigator.canPopSelfOrChildren
                        ? _cupertinoLeading
                        : null,
              ),
    );
  }
}
