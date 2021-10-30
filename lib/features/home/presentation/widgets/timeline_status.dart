import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:timelines/timelines.dart';

/// A stateless widget to render TimelineStatusWidget.
class TimelineStatusWidget extends StatelessWidget {
  final double Function(BuildContext, int)? itemHeight;
  final Widget? Function(BuildContext, TimelineStatus)? builder;
  final Color? connectorColor;
  final EdgeInsets? padding;
  final List<TimelineStatus> statuses;
  final ScrollPhysics physics;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  const TimelineStatusWidget({
    Key? key,
    this.itemHeight,
    this.padding = EdgeInsets.zero,
    this.connectorColor = Palette.accentColor,
    this.builder,
    this.statuses = const [],
    this.physics = const NeverScrollableScrollPhysics(),
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.onDrag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Timeline.tileBuilder(
      theme: TimelineThemeData(
        nodePosition: 0,
        connectorTheme: const ConnectorThemeData(thickness: 1.5),
      ),
      shrinkWrap: true,
      physics: physics,
      padding: padding,
      keyboardDismissBehavior: keyboardDismissBehavior,
      builder: TimelineTileBuilder.connected(
        indicatorBuilder: (context, i) => Indicator.widget(
          position: 0.3,
          child: statuses[i].asset?.let((it) => SvgPicture.asset(it,
                  fit: BoxFit.contain, color: statuses[i].assetColor)) ??
              statuses[i].icon ??
              AppAssets.timelinePin(),
        ),
        connectorBuilder: (_, __, type) => DashedLineConnector(
          indent: type == ConnectorType.start ? 0 : 2.0,
          endIndent: type == ConnectorType.end ? 0 : 2.0,
          color: connectorColor ?? Palette.accent20,
          thickness: 0.8,
        ),
        contentsBuilder: (_, i) =>
            builder?.call(context, statuses[i]) ?? _ContentBuilder(statuses[i]),
        itemExtentBuilder: itemHeight ?? (_, __) => 0.13.sw,
        itemCount: statuses.length,
      ),
    );
  }
}

class _ContentBuilder extends StatelessWidget {
  final TimelineStatus status;

  const _ContentBuilder(this.status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 15.sp,
        color: Palette.neutralLabel,
      ),
      child: LimitedBox(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(left: 0.05.sw),
            alignment: Alignment.bottomCenter,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  status.title?.let((it) => Center(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: AdaptiveText(
                                '$it',
                                minFontSize: 13,
                                maxFontSize: 16,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                                style: DefaultTextStyle.of(context)
                                    .style
                                    .copyWith(color: Palette.neutralLabel),
                              ),
                            ),
                          )) ??
                      Utils.nothing,
                  //
                  status.subtitle?.let((it) => Flexible(
                            child: Center(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: AdaptiveText(
                                  '$it',
                                  minFontSize: 13,
                                  maxFontSize: 16,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.5.sp,
                                      ),
                                ),
                              ),
                            ),
                          )) ??
                      Utils.nothing,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TimelineStatus {
  final String? asset;
  final Color? assetColor;
  final Widget? icon;
  final String? subtitle;
  final String? title;

  const TimelineStatus({
    this.icon,
    this.asset,
    this.assetColor,
    this.title,
    this.subtitle,
  });
}
