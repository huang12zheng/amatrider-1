// ignore_for_file: unused_element

library video_box.dart;

import 'dart:async';
import 'dart:io';

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

enum _VideoType { asset, network, file }

/// A stateless widget to render VideoBox.
class VideoBox extends StatefulWidget {
  final _VideoType _type;

  final bool applyConstraintToReplacement;
  final double aspectRatio;
  final BorderRadius? borderRadius;
  final double elevation;
  final bool pauseIfNotVisible;
  final Widget replacement;
  final ShapeBorder? shape;
  final bool useVideoAspectRatio;
  final String? video;
  final bool showControls;
  final bool autoplay;
  final bool loops;
  final bool autoDisposeControllers;

  const VideoBox.asset({
    Key? key,
    this.aspectRatio = 16 / 9,
    this.elevation = 0,
    this.shape,
    this.borderRadius,
    required this.video,
    this.replacement = Utils.nothing,
    this.applyConstraintToReplacement = false,
    this.useVideoAspectRatio = false,
    this.pauseIfNotVisible = true,
    this.showControls = true,
    this.autoplay = false,
    this.loops = false,
    this.autoDisposeControllers = true,
  })  : _type = _VideoType.asset,
        super(key: key);

  const VideoBox.file({
    Key? key,
    this.aspectRatio = 16 / 9,
    this.elevation = 0,
    this.shape,
    this.borderRadius,
    required this.video,
    this.replacement = Utils.nothing,
    this.applyConstraintToReplacement = false,
    this.useVideoAspectRatio = false,
    this.pauseIfNotVisible = true,
    this.showControls = true,
    this.autoplay = false,
    this.loops = false,
    this.autoDisposeControllers = true,
  })  : _type = _VideoType.file,
        super(key: key);

  const VideoBox.network({
    Key? key,
    this.aspectRatio = 16 / 9,
    this.elevation = 0,
    this.shape,
    this.borderRadius,
    required this.video,
    this.replacement = Utils.nothing,
    this.applyConstraintToReplacement = false,
    this.useVideoAspectRatio = false,
    this.pauseIfNotVisible = true,
    this.showControls = true,
    this.autoplay = false,
    this.loops = false,
    this.autoDisposeControllers = true,
  })  : _type = _VideoType.network,
        super(key: key);

  @override
  State<VideoBox> createState() => _VideoBoxState();
}

class _VideoBoxState extends State<VideoBox> with AutomaticKeepAliveClientMixin<VideoBox> {
  static const _hideDuration = Duration(seconds: 7);

  static const oneSec = Duration(seconds: 1);

  late VideoPlayerController _controller;
  late VideoPlayerOptions _options;
  late ChewieController _chewieController;

  bool isFirstPlay = true;
  bool isPlaying = false;
  bool isVisible = true;
  bool _playerReady = false;
  Timer? timer;

  @override
  void dispose() {
    super.dispose();
    // _controller.removeListener(_listener);
    if (widget.autoDisposeControllers) {
      _controller.dispose();
      _chewieController.dispose();
    }
    timer?.cancel();
  }

  @override
  void initState() {
    super.initState();

    _options = VideoPlayerOptions(mixWithOthers: true);

    _controller = widget._type.when(
      asset: VideoPlayerController.asset('${widget.video}', videoPlayerOptions: _options),
      network: VideoPlayerController.network('${widget.video}', videoPlayerOptions: _options),
      file: VideoPlayerController.file(File('${widget.video}'), videoPlayerOptions: _options),
    )..initialize().whenComplete(() {
        setState(() {
          _playerReady = true;

          _chewieController = ChewieController(
            videoPlayerController: _controller,
            autoPlay: widget.autoplay,
            looping: widget.loops,
            allowFullScreen: true,
            allowMuting: true,
            autoInitialize: true,
            allowPlaybackSpeedChanging: false,
            allowedScreenSleep: false,
            showControls: widget.showControls,
            showControlsOnInitialize: true,
            showOptions: true,
            isLive: true,
            deviceOrientationsOnEnterFullScreen: [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
            deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
            systemOverlaysAfterFullScreen: SystemUiOverlay.values,
            systemOverlaysOnEnterFullScreen: [SystemUiOverlay.top],
            additionalOptions: (_) => [
              OptionItem(
                onTap: () {},
                iconData: CupertinoIcons.app_badge,
                title: 'Go Live',
              ),
            ],
            aspectRatio: widget.useVideoAspectRatio ? _controller.value.aspectRatio : widget.aspectRatio,
          );
        });
      });

    // _controller.addListener(_listener);

    // if (widget.autoplay) _play(widget.loops);
  }

  @override
  bool get wantKeepAlive => true;

  // void _listener() {
  //   setState(() => isPlaying = _controller.value.isPlaying);

  //   // Show the controls on the first play. After that hide them
  //   // if (isFirstPlay && _controller.value.isPlaying) toggleVisibility();

  //   // Set isFirstPlay to false on the first play
  //   // if (_controller.value.isPlaying) setState(() => isFirstPlay = false);

  //   // If at end of video, show control again & cancel timer
  //   if (_controller.value.position == _controller.value.duration) {
  //     _controller.seekTo(Duration.zero);
  //     setState(() {
  //       timer?.cancel();
  //       isPlaying = false;
  //       isVisible = true;
  //     });
  //   }
  // }

  // void _pause() => _controller.pause();

  // void _play([bool loops = false]) {
  //   _controller.setLooping(loops);
  //   _controller.setVolume(1);
  //   _controller.play();
  // }

  // void _restartTimer() {
  //   // Cancel existing timer
  //   timer?.cancel();
  //   // Start timer
  //   timer = Timer.periodic(oneSec, (timer) {
  //     if (mounted) if (_hideDuration.inSeconds == timer.tick) {
  //       setState(() => isVisible = false);
  //     }
  //   });
  // }

  // void togglePlayback() {
  //   if (isPlaying) {
  //     _pause();
  //   } else {
  //     // Set isFirstPlay to false on the first play
  //     if (isFirstPlay) setState(() => isFirstPlay = false);
  //     _play();
  //   }

  //   _restartTimer();
  // }

  void toggleVisibility([bool? value]) {
    setState(() => isVisible = value ?? true);

    // _restartTimer();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return ClipRRect(
      borderRadius: widget.borderRadius ?? BorderRadius.zero,
      child: Material(
        type: MaterialType.transparency,
        borderRadius: widget.borderRadius,
        elevation: 0.0,
        child: widget.video?.let(
              (it) => _playerReady
                  ? Stack(
                      children: [
                        if (widget.pauseIfNotVisible)
                          Positioned.fill(
                            child: AspectRatio(
                              aspectRatio: widget.useVideoAspectRatio ? _controller.value.aspectRatio : widget.aspectRatio,
                              child: VisibilityDetector(
                                key: ObjectKey(_controller),
                                onVisibilityChanged: (visiblityInfo) {
                                  if (visiblityInfo.visibleFraction > 0.9) {
                                    // if (mounted) _pause();

                                    // if (mounted)
                                    //   toggleVisibility(false);
                                  }
                                },
                                child: Chewie(controller: _chewieController),
                              ),
                            ),
                          ),
                        if (!widget.pauseIfNotVisible)
                          Positioned.fill(
                            child: AspectRatio(
                              aspectRatio: widget.useVideoAspectRatio ? _controller.value.aspectRatio : widget.aspectRatio,
                              child: Chewie(controller: _chewieController),
                            ),
                          ),
                        // //
                        // if (widget.showControls)
                        //   Positioned.fill(
                        //     child: GestureDetector(
                        //       onTap: () => toggleVisibility(!isVisible),
                        //       // onTap: () => isPlaying ? _pause : _play,
                        //       child: Visibility(
                        //         visible: isVisible,
                        //         replacement: const DecoratedBox(decoration: BoxDecoration(), child: SizedBox.expand()),
                        //         child: DecoratedBox(
                        //           decoration: BoxDecoration(
                        //             color: App.resolveColor(
                        //               Palette.cardColorDark.withOpacity(0.25),
                        //               dark: Palette.cardColorLight.withOpacity(0.25),
                        //             ),
                        //           ),
                        //           child: Center(
                        //             child: GestureDetector(
                        //               onTap: togglePlayback,
                        //               child: DecoratedBox(
                        //                 decoration: BoxDecoration(
                        //                   borderRadius: BorderRadius.circular(100),
                        //                   color: Utils.foldTheme(
                        //                     light: () => Palette.cardColorDark.withOpacity(0.5),
                        //                     dark: () => Palette.cardColorLight.withOpacity(0.5),
                        //                   ),
                        //                 ),
                        //                 child: Padding(
                        //                   padding: EdgeInsets.all(0.013.sw),
                        //                   child: Icon(
                        //                     isPlaying
                        //                         ? Utils.platform_(
                        //                             material: Icons.pause,
                        //                             cupertino: CupertinoIcons.pause_solid,
                        //                           )
                        //                         : Utils.platform_(
                        //                             material: Icons.play_arrow,
                        //                             cupertino: CupertinoIcons.play_arrow_solid,
                        //                           ),
                        //                     size: 0.1.sw,
                        //                     color: Utils.foldTheme(
                        //                       light: () => Palette.cardColorLight,
                        //                       dark: () => Palette.cardColorDark,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        // _ControlsOverlay(_controller),
                      ],
                    )
                  : Center(
                      child: CircularProgressBar.adaptive(
                        strokeWidth: 2,
                        width: (widget.aspectRatio * 0.04).sw,
                        height: (widget.aspectRatio * 0.04).sw,
                      ),
                    ),
            ) ??
            (widget.applyConstraintToReplacement
                ? AspectRatio(
                    aspectRatio: widget.aspectRatio,
                    child: widget.replacement,
                  )
                : widget.replacement),
      ),
    );
  }
}

extension on _VideoType {
  T when<T>({
    required T asset,
    required T network,
    required T file,
  }) {
    switch (this) {
      case _VideoType.asset:
        return asset;
      case _VideoType.network:
        return network;
      case _VideoType.file:
        return file;
    }
  }
}
