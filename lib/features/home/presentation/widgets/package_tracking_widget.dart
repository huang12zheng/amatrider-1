import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:timelines/timelines.dart';

const _processes = [
  _DeliveryProcess(
    'Package Process',
    messages: [
      _DeliveryMessage('8:30am', 'Package received by driver'),
      _DeliveryMessage('11:30am', 'Reached halfway mark'),
      _DeliveryMessage('11:30am', 'Car accident onBroadway street'),
      _DeliveryMessage('16:15am', 'Dance concert by Burna boy'),
    ],
  ),
  _DeliveryProcess(
    'In Transit',
    messages: [
      _DeliveryMessage('13:00pm', 'Driver arrived at destination'),
      _DeliveryMessage('11:35am', 'Package delivered by m.vassiliades'),
      _DeliveryMessage('11:30am', 'Reached halfway mark'),
    ],
  ),
  _DeliveryProcess.complete(),
];

class PackageTrackingWidget extends StatelessWidget {
  final List<_DeliveryProcess> processes;

  const PackageTrackingWidget({Key? key, this.processes = _processes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 14.sp,
        color: App.resolveColor(
          Palette.text40,
          dark: Palette.text60,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FixedTimeline.tileBuilder(
          theme: TimelineThemeData(
            nodePosition: 0,
            color: App.resolveColor(
              Colors.grey.shade400,
              dark: Colors.grey.shade800,
            ),
            indicatorTheme: const IndicatorThemeData(
              position: 0,
              size: 20.0,
            ),
            connectorTheme: const ConnectorThemeData(thickness: 2),
          ),
          builder: TimelineTileBuilder.connected(
            connectionDirection: ConnectionDirection.before,
            itemCount: processes.length,
            contentsBuilder: (_, index) {
              if (processes[index].isCompleted) return null;

              return Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 1.sw,
                      height: 20,
                      child: AdaptiveText(
                        processes[index].title,
                        style: DefaultTextStyle.of(context).style.copyWith(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                      ),
                    ),
                    _InnerTimeline(messages: processes[index].messages),
                  ],
                ),
              );
            },
            indicatorBuilder: (_, index) {
              if (processes[index].isCompleted) {
                return const DotIndicator(
                  color: Palette.accentColor,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 12.0,
                  ),
                );
              } else {
                return const OutlinedDotIndicator(borderWidth: 2);
              }
            },
            connectorBuilder: (_, index, ___) => SolidLineConnector(
              color: processes[index].isCompleted ? Palette.accentColor : null,
            ),
          ),
        ),
      ),
    );
  }
}

class _InnerTimeline extends StatelessWidget {
  final List<_DeliveryMessage> messages;

  const _InnerTimeline({required this.messages});

  @override
  Widget build(BuildContext context) {
    bool isEdgeIndex(int index) {
      return index == 0 || index == messages.length + 1;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: FixedTimeline.tileBuilder(
        theme: TimelineTheme.of(context).copyWith(
          nodePosition: 0,
          connectorTheme: TimelineTheme.of(context).connectorTheme.copyWith(
                thickness: 1.0,
              ),
          indicatorTheme: TimelineTheme.of(context).indicatorTheme.copyWith(
                size: 10.0,
                position: 0.5,
              ),
        ),
        builder: TimelineTileBuilder(
          indicatorBuilder: (_, index) =>
              !isEdgeIndex(index) ? Indicator.outlined(borderWidth: 1.0) : null,
          startConnectorBuilder: (_, index) => Connector.dashedLine(),
          endConnectorBuilder: (_, index) => Connector.solidLine(),
          contentsBuilder: (_, index) {
            if (isEdgeIndex(index)) return null;

            return Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: AdaptiveText(messages[index - 1].toString()),
            );
          },
          itemExtentBuilder: (_, index) => isEdgeIndex(index) ? 10.0 : 30.0,
          nodeItemOverlapBuilder: (_, index) =>
              isEdgeIndex(index) ? true : null,
          itemCount: messages.length + 2,
        ),
      ),
    );
  }
}

class _DeliveryProcess {
  final List<_DeliveryMessage> messages;
  final String title;

  const _DeliveryProcess(
    this.title, {
    this.messages = const [],
  });

  const _DeliveryProcess.complete()
      : title = 'Done',
        messages = const [];

  bool get isCompleted => title == 'Done';
}

class _DeliveryMessage {
  final String createdAt;
  final String message;

  const _DeliveryMessage(this.createdAt, this.message);

  @override
  String toString() => '$createdAt $message';
}
