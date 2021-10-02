import 'package:amatrider/utils/utils.dart';

class HomeCarouselItem {
  final String? id;
  final String? title;
  final String? image;

  const HomeCarouselItem({this.id, this.title, required this.image});

  static List<HomeCarouselItem> get list => [
        const HomeCarouselItem(id: 'carousel-01', image: AppAssets.slider0),
        const HomeCarouselItem(id: 'carousel-02', image: AppAssets.slider2),
        const HomeCarouselItem(id: 'carousel-03', image: AppAssets.slider1),
        const HomeCarouselItem(id: 'carousel-04', image: AppAssets.slider2),
        const HomeCarouselItem(id: 'carousel-05', image: AppAssets.slider0),
        const HomeCarouselItem(id: 'carousel-06', image: AppAssets.slider1),
      ];

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    return o is HomeCarouselItem && o.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() =>
      'HomeCarouselItem(id: $id, title: $title, image: $image)';
}
