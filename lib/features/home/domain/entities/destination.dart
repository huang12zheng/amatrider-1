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
        const Destination(id: 0, title: 'Home', icon: AppAssets.bottomNavHome),
        //
        const Destination(
            id: 1, title: 'History', icon: AppAssets.bottomNavDocument),
        //
        const Destination(
            id: 2, title: 'Insight', icon: AppAssets.bottomNavActivity),
        //
        const Destination(
            id: 4, title: 'Profile', icon: AppAssets.bottomNavActivity),
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
