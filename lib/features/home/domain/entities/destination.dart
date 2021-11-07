import 'package:amatrider/utils/utils.dart';

class Destination {
  final int id;
  final String icon;
  final String title;

  const Destination({
    required this.id,
    required this.title,
    required this.icon,
  });

  static List<Destination> get list => [
        Destination(
            id: 0, title: '${S.current.home}', icon: AppAssets.bottomNavHome),
        //
        Destination(
            id: 1,
            title: '${S.current.history}',
            icon: AppAssets.bottomNavDocument),
        //
        Destination(
            id: 2,
            title: '${S.current.insightTitleText}',
            icon: AppAssets.bottomNavActivity),
        //
        Destination(
            id: 4,
            title: '${S.current.profile}',
            icon: AppAssets.bottomNavActivity),
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
