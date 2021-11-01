import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

enum _AdaptiveListTileType { normal, switchType }

/// A stateless widget to render AdaptiveListTile.
class AdaptiveListTile extends StatelessWidget {
  @override
  final Key? key;
  final bool autofocus;
  final EdgeInsets? contentPadding;
  final bool? dense;
  final bool? enableFeedback;
  final bool enabled;
  final Color? focusColor;
  final FocusNode? focusNode;
  final double? horizontalTitleGap;
  final Color? hoverColor;
  final bool isThreeLine;
  final Widget? leading;
  final double? minLeadingWidth;
  final double? minVerticalPadding;
  final MouseCursor? mouseCursor;
  final VoidCallback? onLongPress;
  final VoidCallback? onTap;
  final bool selected;
  final Color cupertinoPressedColor;
  final Color? selectedTileColor;
  final ShapeBorder? shape;
  final ShapeBorder? cupertinoBorder;
  final Widget? subtitle;
  final Color? tileColor;
  final Widget? title;
  final Widget? trailing;
  final VisualDensity? visualDensity;
  final _AdaptiveListTileType _type;

  // Switch
  final bool value;
  final void Function(bool?)? onChanged;
  final Color? activeColor;
  final ImageProvider<Object>? activeThumbImage;
  final Color? activeTrackColor;
  final ListTileControlAffinity? controlAffinity;
  final Color? inactiveThumbColor;
  final ImageProvider<Object>? inactiveThumbImage;
  final Color? inactiveTrackColor;
  final Widget? secondary;
  final DragStartBehavior? dragStartBehavior;
  final Color? trackColor;

  // List tile type
  final bool material;
  final bool cupertino;

  const AdaptiveListTile({
    this.key,
    this.autofocus = false,
    this.contentPadding,
    this.dense,
    this.enableFeedback,
    this.enabled = true,
    this.focusColor,
    this.focusNode,
    this.horizontalTitleGap,
    this.hoverColor,
    this.isThreeLine = false,
    this.leading,
    this.minLeadingWidth,
    this.minVerticalPadding,
    this.mouseCursor,
    this.onLongPress,
    this.onTap,
    this.selected = false,
    this.selectedTileColor,
    this.shape,
    this.subtitle,
    this.tileColor,
    this.title,
    this.trailing,
    this.visualDensity,
    this.cupertinoPressedColor = CupertinoColors.systemFill,
    this.cupertinoBorder,
    this.material = false,
    this.cupertino = false,
  })  : _type = _AdaptiveListTileType.normal,
        value = false,
        onChanged = null,
        activeColor = null,
        activeThumbImage = null,
        activeTrackColor = null,
        controlAffinity = null,
        inactiveThumbColor = null,
        inactiveThumbImage = null,
        inactiveTrackColor = null,
        secondary = null,
        dragStartBehavior = null,
        trackColor = null,
        assert((material && !cupertino) ||
            (!material || cupertino) ||
            (!material || !cupertino)),
        super(key: key);

  const AdaptiveListTile.adaptiveSwitch({
    this.key,
    required this.value,
    required this.onChanged,
    this.activeColor,
    this.activeThumbImage,
    this.activeTrackColor,
    this.autofocus = false,
    this.contentPadding,
    this.controlAffinity = ListTileControlAffinity.platform,
    this.dense,
    this.inactiveThumbColor,
    this.inactiveThumbImage,
    this.inactiveTrackColor,
    this.isThreeLine = false,
    this.secondary,
    this.selected = false,
    this.selectedTileColor,
    this.shape,
    this.subtitle,
    this.title,
    this.tileColor,
    this.trackColor,
    this.dragStartBehavior = DragStartBehavior.start,
    this.material = false,
    this.cupertino = false,
  })  : _type = _AdaptiveListTileType.switchType,
        enableFeedback = null,
        enabled = true,
        focusColor = null,
        focusNode = null,
        horizontalTitleGap = null,
        hoverColor = null,
        leading = null,
        minLeadingWidth = null,
        minVerticalPadding = null,
        mouseCursor = null,
        onLongPress = null,
        onTap = null,
        trailing = null,
        visualDensity = null,
        cupertinoPressedColor = CupertinoColors.systemFill,
        cupertinoBorder = null,
        assert((material && !cupertino) ||
            (!material || cupertino) ||
            (!material || !cupertino)),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (material)
      return Theme.of(context).platform.material(Material(
            // color: Colors.transparent,
            elevation: 0.0,
            type: MaterialType.transparency,
            child: materialTiles,
          ))!;
    if (cupertino) return Theme.of(context).platform.cupertino(cupertinoTiles)!;

    return PlatformBuilder(
      material: (_) => materialTiles,
      cupertino: (_) => cupertinoTiles,
    );
  }

  Widget get materialTiles => _type.fold(
        normal: () => ListTile(
          key: key,
          autofocus: autofocus,
          contentPadding: contentPadding,
          dense: dense,
          enableFeedback: enableFeedback,
          enabled: enabled,
          focusColor: focusColor,
          focusNode: focusNode,
          horizontalTitleGap: horizontalTitleGap,
          hoverColor: hoverColor,
          isThreeLine: isThreeLine,
          leading: leading,
          minLeadingWidth: minLeadingWidth,
          minVerticalPadding: minVerticalPadding,
          mouseCursor: mouseCursor,
          onLongPress: onLongPress,
          onTap: onTap,
          selected: selected,
          selectedTileColor: selectedTileColor,
          shape: shape,
          subtitle: subtitle,
          tileColor: tileColor,
          title: title,
          trailing: trailing,
          visualDensity: visualDensity,
        ),
        switchType: () => SwitchListTile(
          key: key,
          value: value,
          onChanged: onChanged!,
          activeColor: activeColor,
          activeThumbImage: activeThumbImage,
          activeTrackColor: activeTrackColor,
          autofocus: autofocus,
          contentPadding: contentPadding,
          controlAffinity: controlAffinity!,
          dense: dense,
          inactiveThumbColor: inactiveThumbColor,
          inactiveThumbImage: inactiveThumbImage,
          inactiveTrackColor: inactiveTrackColor,
          isThreeLine: isThreeLine,
          secondary: secondary,
          selected: selected,
          selectedTileColor: selectedTileColor,
          shape: shape,
          subtitle: subtitle,
          title: title,
          tileColor: tileColor,
        ),
      );

  Widget get cupertinoTiles => _type.fold(
        normal: () => CupertinoListTile(
          key: key,
          autofocus: autofocus,
          contentPadding: contentPadding,
          dense: dense,
          enabled: enabled,
          focusColor: focusColor,
          focusNode: focusNode,
          hoverColor: hoverColor,
          isThreeLine: isThreeLine,
          leading: leading,
          mouseCursor: mouseCursor,
          onLongPress: onLongPress,
          onTap: onTap,
          selected: selected,
          subtitle: subtitle,
          title: title,
          trailing: trailing,
          border: cupertinoBorder,
          pressColor: cupertinoPressedColor,
        ),
        switchType: () => CupertinoFormRow(
          padding: EdgeInsets.zero,
          child: MergeSemantics(
            child: CupertinoListTile(
              key: key,
              autofocus: autofocus,
              contentPadding: contentPadding,
              dense: dense,
              enabled: enabled,
              focusColor: focusColor,
              focusNode: focusNode,
              hoverColor: hoverColor,
              isThreeLine: isThreeLine,
              leading: leading ?? secondary,
              selected: selected,
              subtitle: subtitle,
              title: title,
              border: cupertinoBorder,
              onTap: onTap,
              mouseCursor: mouseCursor,
              onLongPress: onLongPress,
              pressColor: cupertinoPressedColor,
              trailing: CupertinoSwitch(
                key: key,
                value: value,
                onChanged: onChanged!,
                activeColor: activeColor,
                trackColor: trackColor,
                dragStartBehavior: dragStartBehavior!,
              ),
            ),
          ),
        ),
      );
}

extension on _AdaptiveListTileType {
  T fold<T>({
    required T Function() normal,
    T Function()? switchType,
  }) {
    switch (this) {
      case _AdaptiveListTileType.switchType:
        return switchType?.call() ?? normal.call();
      case _AdaptiveListTileType.normal:
      default:
        return normal.call();
    }
  }
}
