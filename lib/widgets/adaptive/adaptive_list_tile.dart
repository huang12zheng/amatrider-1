import 'package:amatrider/widgets/widgets.dart';
import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum _AdaptiveListTileType { normal, switchType }

/// A stateless widget to render AdaptiveListTile.
class AdaptiveListTile extends StatelessWidget {
  @override
  final Key? key;

  final _AdaptiveListTileType _type;

  final void Function(bool?)? onChanged;
  final Color? activeColor;
  final ImageProvider<Object>? activeThumbImage;
  final Color? activeTrackColor;
  final bool autofocus;
  final BorderSide border;
  final BorderRadius borderRadius;
  final EdgeInsets? contentPadding;
  final ListTileControlAffinity? controlAffinity;
  final bool cupertino;
  final ShapeBorder? cupertinoBorder;
  final Color cupertinoPressedColor;
  final bool? dense;
  final DragStartBehavior? dragStartBehavior;
  final bool? enableFeedback;
  final bool enabled;
  final Color? focusColor;
  final FocusNode? focusNode;
  final double? horizontalTitleGap;
  final Color? hoverColor;
  final Color? inactiveThumbColor;
  final ImageProvider<Object>? inactiveThumbImage;
  final Color? inactiveTrackColor;
  final bool isThreeLine;
  final Widget? leading;
  // List tile type
  final bool material;

  final double? minLeadingWidth;
  final double? minVerticalPadding;
  final MouseCursor? mouseCursor;
  final bool noCupertinoBorder;
  final VoidCallback? onLongPress;
  final VoidCallback? onTap;
  final Widget? secondary;
  final bool selected;
  final Color? selectedTileColor;
  final ShapeBorder? shape;
  final Widget? subtitle;
  final Color? tileColor;
  final Widget? title;
  final Color? trackColor;
  final Widget? trailing;
  // Switch
  final bool value;

  final VisualDensity? visualDensity;

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
    this.borderRadius = BorderRadius.zero,
    this.border = BorderSide.none,
    this.cupertinoPressedColor = CupertinoColors.systemFill,
    this.cupertinoBorder,
    this.material = false,
    this.cupertino = false,
    this.noCupertinoBorder = false,
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
        assert((material && !cupertino) || (!material || cupertino) || (!material || !cupertino)),
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
    this.borderRadius = BorderRadius.zero,
    this.border = BorderSide.none,
    this.dragStartBehavior = DragStartBehavior.start,
    this.material = false,
    this.cupertino = false,
    this.noCupertinoBorder = false,
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
        assert((material && !cupertino) || (!material || cupertino) || (!material || !cupertino)),
        super(key: key);

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
          border: noCupertinoBorder ? const Border.fromBorderSide(BorderSide.none) : cupertinoBorder,
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
              border: noCupertinoBorder ? const Border.fromBorderSide(BorderSide.none) : cupertinoBorder,
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

  @override
  Widget build(BuildContext context) {
    if (material)
      return ClipRRect(
        borderRadius: borderRadius,
        child: Material(
          elevation: 0.0,
          type: MaterialType.transparency,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
            side: border,
          ),
          child: materialTiles,
        ),
      );
    if (cupertino) return cupertinoTiles;

    return PlatformBuilder(
      material: (_) => ClipRRect(
        borderRadius: borderRadius,
        child: materialTiles,
      ),
      cupertino: (_) => cupertinoTiles,
    );
  }
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
