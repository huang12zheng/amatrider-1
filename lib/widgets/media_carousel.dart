library media_carousel.dart;

import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// A stateless widget to render MediaCarousel.
class MediaCarousel<U extends MediaDecorator> extends StatefulWidget {
  /// A list of MediaDecorator items.
  final List<MediaDecorator> items;

  /// The initial page to show when first creating the [CarouselSlider].
  ///
  /// Defaults to 0.
  final int initialPage;

  /// Set carousel height and overrides any existing [aspectRatio].
  final double height;

  /// Aspect ratio is used if no height have been declared.
  ///
  /// Defaults to 16:9 aspect ratio.
  final double aspectRatio;

  /// Reverse the order of items if set to true.
  ///
  /// Defaults to false.
  final bool reverse;

  /// Enables auto play, sliding one page at a time.
  ///
  /// Use [autoPlayInterval] to determent the frequency of slides. Defaults to false.
  final bool autoPlay;

  /// The fraction of the viewport that each page should occupy.
  ///
  /// Defaults to 0.8, which means each page fills 80% of the carousel.
  final double viewportFraction;

  /// Determines if carousel should loop infinitely or be limited to item length.
  ///
  /// Defaults to true, i.e. infinite loop.
  final bool enableInfiniteScroll;

  /// If true, the auto play function will be paused when user is interacting with the carousel,
  /// and will be resumed when user finish interacting. Default to true.
  final bool pauseAutoPlayOnTouch;

  /// If true, the auto play function will be paused when user is calling pageController's
  /// `nextPage` or `previousPage` or `animateToPage` method. And after the animation complete, the auto play will be resumed. Default to true.
  final bool pauseAutoPlayOnManualNavigate;

  /// If `enableInfiniteScroll` is false, and `autoPlay` is true, this option decide the carousel should go to the first item when it reach the last item or not. If set to true, the auto play will be paused when it reach the last item. If set to false, the auto play function will animate to the first item when it was in the last item.
  final bool pauseAutoPlayInFiniteScroll;

  /// Determines if current page should be larger then the side images, creating a feeling of depth in the carousel.
  ///
  /// Defaults to false.
  final bool enlargeCenterPage;

  /// The widget item builder that will be used to build item on demand.
  ///
  /// The third argument is the PageView's real index, can be used to cooperate with Hero.
  ///
  /// The forth argument is the Media object at the current index.
  final Widget Function(BuildContext c, int itemIndex, int pageViewIndex, U media) builder;

  final void Function(int, CarouselPageChangedReason)? onPageChanged;

  /// Determines the animation curve physics.
  ///
  /// Defaults to `Curves.fastOutSlowIn`.
  final Curve autoPlayCurve;

  /// Sets Duration to determent the frequency of slides when
  ///
  /// `autoPlay` is set to true. Defaults to 4 seconds.
  final Duration autoPlayInterval;

  /// The animation duration between two transitioning pages while in auto playback.
  ///
  /// Defaults to 800 ms.
  final Duration autoPlayAnimationDuration;

  /// The on demand item builder constructor
  final void Function(CarouselController)? controller;

  /// The axis along which the page view scrolls.
  ///
  /// Defaults to `Axis.horizontal`.
  final Axis scrollDirection;

  final bool showIndicators;

  final bool disableCenter;

  const MediaCarousel({
    Key? key,
    this.initialPage = 0,
    required this.items,
    required this.builder,
    this.controller,
    this.reverse = false,
    this.autoPlay = false,
    required this.height,
    this.aspectRatio = 16 / 9,
    this.autoPlayCurve = Curves.fastOutSlowIn,
    this.viewportFraction = 0.6,
    this.enlargeCenterPage = true,
    this.enableInfiniteScroll = true,
    this.pauseAutoPlayOnTouch = true,
    this.pauseAutoPlayOnManualNavigate = true,
    this.pauseAutoPlayInFiniteScroll = false,
    this.scrollDirection = Axis.horizontal,
    this.autoPlayInterval = const Duration(seconds: 4),
    this.autoPlayAnimationDuration = const Duration(milliseconds: 800),
    this.onPageChanged,
    this.showIndicators = true,
    this.disableCenter = true,
  }) : super(key: key);

  @override
  State<MediaCarousel<U>> createState() => _MediaCarouselState<U>();
}

class _MediaCarouselState<U extends MediaDecorator> extends State<MediaCarousel<U>> {
  CarouselController? _controller;
  int currentIndex = 0;

  bool get hasItems => widget.items.isNotEmpty;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _controller = CarouselController();
      widget.controller!.call(_controller!);
    }
  }

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    // Update current index
    setState(() => currentIndex = index);

    if (widget.onPageChanged != null) widget.onPageChanged?.call(index, reason);
  }

  CarouselOptions get _options => CarouselOptions(
        height: widget.height,
        aspectRatio: widget.aspectRatio,
        viewportFraction: widget.viewportFraction,
        initialPage: widget.initialPage,
        enableInfiniteScroll: widget.enableInfiniteScroll,
        reverse: widget.reverse,
        autoPlay: widget.autoPlay,
        disableCenter: widget.disableCenter,
        pauseAutoPlayOnTouch: widget.pauseAutoPlayOnTouch,
        pauseAutoPlayOnManualNavigate: widget.pauseAutoPlayOnManualNavigate,
        pauseAutoPlayInFiniteScroll: widget.pauseAutoPlayInFiniteScroll,
        autoPlayInterval: widget.autoPlayInterval,
        autoPlayAnimationDuration: widget.autoPlayAnimationDuration,
        autoPlayCurve: widget.autoPlayCurve,
        enlargeCenterPage: widget.enlargeCenterPage,
        scrollDirection: widget.scrollDirection,
        onPageChanged: onPageChanged,
      );

  @override
  Widget build(BuildContext context) {
    return !hasItems
        ? Utils.nothing
        : SizedBox(
            height: !widget.showIndicators ? widget.height : widget.height + 0.09.h,
            child: Stack(
              alignment: Alignment.topCenter,
              fit: StackFit.expand,
              children: [
                Positioned.fill(
                  bottom: !widget.showIndicators ? 0 : widget.height * 0.3,
                  child: CarouselSlider.builder(
                    options: _options,
                    carouselController: _controller,
                    itemCount: widget.items.length,
                    itemBuilder: (context, itemIndex, pageViewIndex) => widget.builder(
                      context,
                      itemIndex,
                      pageViewIndex,
                      widget.items[itemIndex] as U,
                    ),
                  ),
                ),
                //
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: AnimatedVisibility(
                    visible: widget.showIndicators,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                          child: AnimatedSmoothIndicator(
                            activeIndex: currentIndex,
                            count: widget.items.length,
                            effect: WormEffect(
                              activeDotColor: Palette.accentColor,
                              type: WormType.thin,
                              radius: 100.0,
                              spacing: 6.0,
                              dotHeight: App.height * 0.006,
                              dotWidth: 6.0,
                              dotColor: Palette.accent20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
