import 'package:flutter/cupertino.dart';

// Standard header margin, determined from SwiftUI's Forms in iOS 14.2 SDK.
const EdgeInsetsDirectional _kDefaultHeaderMargin =
    EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 10.0);

// Standard footer margin, determined from SwiftUI's Forms in iOS 14.2 SDK.
const EdgeInsetsDirectional _kDefaultFooterMargin =
    EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 10.0);

// Used for iOS "Inset Grouped" border radius, estimated from SwiftUI's Forms in
// iOS 14.2 SDK.
const BorderRadius _kDefaultInsetGroupedBorderRadius =
    BorderRadius.all(Radius.circular(10.0));

// Used to differentiate the edge-to-edge section with the centered section.
enum _CupertinoFormSectionType { base, insetGrouped }

class ExtendedCupertinoFormSection extends CupertinoFormSection {
  final _CupertinoFormSectionType _type;

  const ExtendedCupertinoFormSection({
    Key? key,
    required List<Widget> children,
    Widget? header,
    Widget? footer,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    Color backgroundColor = CupertinoColors.systemGroupedBackground,
    BoxDecoration? decoration,
    Clip clipBehavior = Clip.none,
  })  : _type = _CupertinoFormSectionType.base,
        super(
          key: key,
          children: children,
          header: header,
          footer: footer,
          backgroundColor: backgroundColor,
          decoration: decoration,
          clipBehavior: clipBehavior,
          margin: margin,
        );

  const ExtendedCupertinoFormSection.insetGrouped({
    Key? key,
    required List<Widget> children,
    Widget? header,
    Widget? footer,
    EdgeInsetsGeometry margin = EdgeInsets.zero,
    Color backgroundColor = CupertinoColors.systemGroupedBackground,
    BoxDecoration? decoration,
    Clip clipBehavior = Clip.none,
  })  : _type = _CupertinoFormSectionType.insetGrouped,
        super.insetGrouped(
          key: key,
          children: children,
          header: header,
          footer: footer,
          backgroundColor: backgroundColor,
          decoration: decoration,
          clipBehavior: clipBehavior,
          margin: margin,
        );

  @override
  Widget build(BuildContext context) {
    final Color dividerColor = CupertinoColors.separator.resolveFrom(context);
    final dividerHeight = 1.0 / MediaQuery.of(context).devicePixelRatio;

    // Long divider is used for wrapping the top and bottom of rows.
    // Only used in _CupertinoFormSectionType.base mode
    final Widget longDivider = Container(
      color: dividerColor,
      height: dividerHeight,
    );

    // Short divider is used between rows.
    // The value of the starting inset (15.0) is determined using SwiftUI's Form
    // separators in the iOS 14.2 SDK.
    final Widget shortDivider = Container(
      margin: const EdgeInsetsDirectional.only(start: 15.0),
      color: dividerColor,
      height: dividerHeight,
    );

    // We construct childrenWithDividers as follows:
    // Insert a short divider between all rows.
    // If it is a `_CupertinoFormSectionType.base` type, add a long divider
    // to the top and bottom of the rows.
    assert(children.isNotEmpty);

    final childrenWithDividers = <Widget>[];

    if (_type == _CupertinoFormSectionType.base) {
      childrenWithDividers.add(longDivider);
    }

    children.sublist(0, children.length - 1).forEach((Widget widget) {
      childrenWithDividers.add(widget);
      childrenWithDividers.add(shortDivider);
    });

    childrenWithDividers.add(children.last);
    if (_type == _CupertinoFormSectionType.base) {
      childrenWithDividers.add(longDivider);
    }

    final BorderRadius childrenGroupBorderRadius;
    switch (_type) {
      case _CupertinoFormSectionType.insetGrouped:
        childrenGroupBorderRadius = _kDefaultInsetGroupedBorderRadius;
        break;
      case _CupertinoFormSectionType.base:
        childrenGroupBorderRadius = BorderRadius.zero;
        break;
    }

    // Refactored the decorate children group in one place to avoid repeating it
    // twice down bellow in the returned widget.
    final decoratedChildrenGroup = DecoratedBox(
      decoration: decoration ??
          BoxDecoration(
            color: CupertinoDynamicColor.resolve(
              decoration?.color ??
                  CupertinoColors.secondarySystemGroupedBackground,
              context,
            ),
            borderRadius: childrenGroupBorderRadius,
          ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: childrenWithDividers,
      ),
    );

    return DecoratedBox(
      decoration: BoxDecoration(
        color: CupertinoDynamicColor.resolve(backgroundColor, context),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          if (header != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 13.0,
                  color: CupertinoColors.secondaryLabel.resolveFrom(context),
                ),
                child: Padding(
                  padding: _kDefaultHeaderMargin,
                  child: header,
                ),
              ),
            ),
          Padding(
            padding: margin,
            child: clipBehavior == Clip.none
                ? decoratedChildrenGroup
                : ClipRRect(
                    borderRadius: childrenGroupBorderRadius,
                    clipBehavior: clipBehavior,
                    child: decoratedChildrenGroup,
                  ),
          ),
          if (footer != null)
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: DefaultTextStyle(
                style: TextStyle(
                  fontSize: 13.0,
                  color: CupertinoColors.secondaryLabel.resolveFrom(context),
                ),
                child: Padding(
                  padding: _kDefaultFooterMargin,
                  child: footer,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
