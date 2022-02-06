library map_user_card.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render MapUserCard.
class MapUserCard extends StatelessWidget {
  final double? height;
  final double? width;
  final String title;
  final String subtitle;
  final String? imageUrl;
  final String? localImageUrl;

  const MapUserCard({
    Key? key,
    this.height,
    this.width,
    this.imageUrl,
    this.localImageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  // bool get _hasImage => imageUrl != null || localImageUrl != null;

  double get _height => height ?? 0.06.h;
  double get _width => width ?? 0.6.sw;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
        ),
        child: Padding(
          padding: EdgeInsets.all(0.008.sw),
          child: SizedBox(
            height: _height,
            width: _width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                  child: imageUrl?.let(
                        (it) => CachedNetworkImage(
                          imageUrl: '$it',
                          fit: BoxFit.contain,
                          height: _height,
                          width: _width * 0.3,
                          progressIndicatorBuilder: (_, url, download) => Center(
                            child: CircularProgressBar.adaptive(
                              value: download.progress,
                              strokeWidth: 1.5,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          errorWidget: (_, __, ___) => Image.asset(
                            AppAssets.unnamed,
                            fit: BoxFit.contain,
                            height: _height,
                            width: _width * 0.3,
                          ),
                        ),
                      ) ??
                      localImageUrl?.let(
                        (it) => Image.asset(
                          AppAssets.unnamed,
                          fit: BoxFit.contain,
                          height: _height,
                          width: _width * 0.3,
                        ),
                      ),
                ),
                //
                HorizontalSpace(width: 0.03.sw),
                //
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AdaptiveText(
                          title,
                          fontSize: 17.sp,
                          minFontSize: 15,
                          maxFontSize: 18,
                          textColor: Colors.grey.shade800,
                          textColorDark: Colors.white24,
                          fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //
                      Flexible(
                        child: AdaptiveText(
                          subtitle,
                          maxLines: 1,
                          minFontSize: 16,
                          maxFontSize: 19,
                          fontSize: 19.sp,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
