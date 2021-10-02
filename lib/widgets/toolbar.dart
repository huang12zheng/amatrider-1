import 'package:amatrider/utils/utils.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class Toolbar extends AppBar {
  final double height;

  Toolbar({
    Key? key,
    String title = '',
    Widget headline = const SizedBox.shrink(),
    Widget? leadingIcon,
    TextStyle? titleStyle,
    bool? centerTitle = true,
    bool implyLeading = true,
    bool? leadingCondition,
    VoidCallback? leadingAction,
    double elevation = 0.0,
    String? tooltip,
    String? sematics,
    double? fontSize,
    double? height,
    Color backgroundColor = Colors.transparent,
    Color? buttonColor,
    List<Widget> actions = const [],
  })  : height = height ?? kToolbarHeight,
        super(
          toolbarHeight: height,
          title: Visibility(
            visible: !title.isBlank,
            replacement: headline,
            child: AutoSizeText(
              title,
              style: !titleStyle.isNullOrBlank
                  ? titleStyle
                  : fontSize != null && fontSize >= 0.0
                      ? TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: fontSize,
                        )
                      : const TextStyle(
                          fontWeight: FontWeight.w600, color: Palette.text100),
              wrapWords: false,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          titleTextStyle: titleStyle,
          automaticallyImplyLeading: implyLeading,
          centerTitle: centerTitle,
          elevation: elevation,
          backgroundColor: backgroundColor,
          actions: actions,
          leading: leadingCondition ?? navigator.canPopSelfOrChildren
              ? Semantics.fromProperties(
                  properties: SemanticsProperties(
                    label: sematics,
                    hint: sematics,
                    button: true,
                  ),
                  child: Tooltip(
                    message: tooltip ?? 'Back',
                    child: IconButton(
                      icon: leadingIcon ??
                          const Icon(Icons.keyboard_backspace_rounded),
                      onPressed: leadingAction ?? navigator.pop,
                      color: buttonColor ??
                          Utils.computeLuminance(
                            Theme.of(App.context).scaffoldBackgroundColor,
                          ),
                    ),
                  ),
                )
              : null,
        );

  @override
  Size get preferredSize => Size.fromHeight(height);
}
