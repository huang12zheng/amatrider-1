import 'package:amatrider/utils/utils.dart';
import 'package:flutter/widgets.dart';

class Destination {
  final int id;
  final IconData icon;
  final String title;

  const Destination({
    required this.id,
    required this.title,
    required this.icon,
  });

  static List<Destination> get list => [
        Destination(
          id: 0,
          title: '${S.current.home}',
          icon: AmatNow.dashboard_home,
        ),
        //
        Destination(
          id: 1,
          title: '${S.current.history}',
          icon: AmatNow.dashboard_document,
        ),
        //
        Destination(
          id: 2,
          title: '${S.current.insightTitleText}',
          icon: AmatNow.dashboard_activity,
        ),
        //
        Destination(
          id: 4,
          title: '${S.current.profile}',
          icon: AmatNow.dashboard_home,
        ),
      ];

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    return o is Destination && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'Destination(id: $id, title: $title)';
}
