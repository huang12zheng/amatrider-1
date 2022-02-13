import 'dart:io';
import 'dart:ui' as ui;

import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

/// A stateless widget to render ImageUploadWidget.
class ImageUploadWidget<Reactive extends Cubit<ReactiveState>, ReactiveState> extends StatelessWidget {
  final EdgeInsets? padding;
  final double radius;
  final BoxFit localFit;
  final BoxFit networkFit;
  final bool Function(ReactiveState) isLoading;
  final double Function(ReactiveState)? height;
  final double Function(ReactiveState)? width;
  final File? Function(ReactiveState)? selected;
  final String? Function(ReactiveState)? url;
  final void Function(Reactive, ImageSource)? onCameraClicked;
  final void Function(Reactive, ImageSource)? onGalleryClicked;
  final ReactiveState? state;
  final void Function(Reactive)? onClosePressed;
  final bool showCenterIcon;
  final IconData? centerIcon;

  const ImageUploadWidget({
    Key? key,
    required this.isLoading,
    this.radius = Utils.cardRadius,
    this.padding,
    this.height,
    this.width,
    this.selected,
    this.url,
    this.onCameraClicked,
    this.onGalleryClicked,
    this.state,
    this.localFit = BoxFit.contain,
    this.networkFit = BoxFit.contain,
    this.onClosePressed,
    this.showCenterIcon = false,
    this.centerIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return state != null ? _widget(context, state!) : BlocBuilder<Reactive, ReactiveState>(builder: (c, s) => _widget(c, s));
  }

  Widget _widget(BuildContext c, ReactiveState s) => Padding(
        padding: EdgeInsets.zero.merge(padding),
        child: FutureBuilder<ui.Image>(
          future: url?.call(s)?.let((it) => App.getImageDimensions(
                    CachedNetworkImageProvider(it),
                  ).future) ??
              selected?.call(s)?.let((it) => App.getImageDimensions(
                    FileImage(it),
                  ).future) ??
              App.getImageDimensions(const AssetImage(AppAssets.unnamed)).future,
          builder: (_, snapshot) {
            if (!snapshot.hasData && !isLoading.call(s)) return const Center(child: CircularProgressBar.adaptive());

            final _height = height?.call(s) ?? width?.call(s) ?? snapshot.data?.height.toDouble();

            final _width = width?.call(s) ?? height?.call(s) ?? snapshot.data?.width.toDouble();

            return SizedBox(
              height: _height,
              width: _width,
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(radius),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (selected?.call(s) != null)
                              Flexible(
                                child: Image.file(selected!.call(s)!, fit: localFit, height: _height, width: _width),
                              ),
                            //
                            if (selected?.call(s) == null)
                              Flexible(
                                child: ImageBox.network(
                                  photo: url?.call(s),
                                  fit: networkFit,
                                  height: _height ?? 0.2.w,
                                  width: _width ?? 0.2.w,
                                  replacement: Image.asset(
                                    AppAssets.unnamed,
                                    fit: localFit,
                                    height: _height,
                                    width: _width,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      //
                      Positioned(
                        child: AnimatedVisibility(
                          visible: showCenterIcon,
                          child: Center(
                            child: Material(
                              elevation: 0,
                              color: App.resolveColor(
                                Palette.cardColorLight,
                                dark: Palette.cardColorDark,
                              )?.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(300),
                              child: Padding(
                                padding: EdgeInsets.all((_height ?? 0) * 0.08),
                                child: Icon(
                                  centerIcon ?? AmatNow.gallery_plus,
                                  color: Palette.accentColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      //
                      Material(
                        borderRadius: BorderRadius.circular(radius),
                        color: App.resolveColor(Colors.transparent),
                        elevation: 0,
                        child: AdaptiveInkWell(
                          borderRadius: BorderRadius.circular(radius),
                          onTap: () async {
                            if (!isLoading.call(s))
                              await App.showAdaptiveBottomSheet(
                                c,
                                radius: Radius.zero,
                                builder: (_) => DocumentPickerSheet(
                                  pickers: [
                                    DocumentPicker(
                                        name: 'Camera',
                                        asset: Utils.foldTheme(
                                          light: () => AppAssets.cameraColored,
                                          dark: () => AppAssets.cameraOutlined,
                                        ),
                                        onPressed: () => onCameraClicked?.call(c.read<Reactive>(), ImageSource.camera)),
                                    DocumentPicker(
                                        name: 'Gallery',
                                        asset: Utils.foldTheme(
                                          light: () => AppAssets.galleryColored,
                                          dark: () => AppAssets.galleryOutlined,
                                        ),
                                        onPressed: () => onGalleryClicked?.call(c.read<Reactive>(), ImageSource.gallery)),
                                  ],
                                ),
                              );
                          },
                          child: const SizedBox.expand(),
                        ),
                      ),
                      //
                      Positioned(
                        top: 0,
                        right: 0,
                        child: AnimatedVisibility(
                          visible: onClosePressed != null,
                          child: Material(
                            elevation: 0,
                            color: App.resolveColor(
                              Palette.cardColorLight,
                              dark: Palette.cardColorDark,
                            ),
                            borderRadius: BorderRadius.circular(radius),
                            child: AdaptiveInkWell(
                              borderRadius: BorderRadius.circular(radius),
                              onTap: () => onClosePressed?.call(c.read<Reactive>()),
                              child: Padding(
                                padding: EdgeInsets.all(0.015.sw),
                                child: const Icon(
                                  Icons.close,
                                  size: 20,
                                  color: Palette.accentColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
}
