library service_access_widget.dart;

import 'dart:io';

import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render AccessScreen.
class AccessScreen extends StatelessWidget with AutoRouteWrapper {
  final String title;
  final String content;
  final String firstButtonText;
  final String? secondButtonText;
  final Future<bool> Function()? onWillPop;
  final Future<bool> Function() onAccept;
  final Future<bool> Function()? onDecline;
  final AdaptiveText? additionalContent;

  const AccessScreen({
    Key? key,
    required this.title,
    required this.content,
    this.firstButtonText = 'Grant Access',
    this.secondButtonText,
    required this.onAccept,
    this.onWillPop,
    this.onDecline,
    this.additionalContent,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<LocationCubit>(context),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: AdaptiveScaffold(
        body: SafeArea(
          top: true,
          bottom: false,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                bottom: 0.5.h,
                child: const DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
              //
              Positioned(
                top: 0.02.h,
                left: 0,
                right: 0,
                bottom: 0.83.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AdaptiveText(
                              '$title',
                              style: TextStyle(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Flexible(
                        child: AdaptiveText(
                          '$content',
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              Positioned(
                top: 0.25.h,
                left: 0,
                right: 0,
                child: SizedBox(
                  height: 0.4.h,
                  width: 1.w,
                  child: AppAssets.groupEllipse,
                ),
              ),
              //
              Positioned(
                top: 0.67.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
                      .copyWith(bottom: App.sidePadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Flexible(
                        child: Column(
                          children: [
                            Flexible(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: AppAssets.thumbLove,
                              ),
                            ),
                            //
                            VerticalSpace(height: 0.01.h),
                            //
                            Flexible(
                              flex: 2,
                              child: additionalContent ?? Utils.nothing,
                            ),
                          ],
                        ),
                      ),
                      //
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Flexible(
                              child: AppButton(
                                text: '$firstButtonText',
                                onPressed: () async {
                                  final _result = await onAccept.call();
                                  if (_result) await navigator.pop();
                                },
                              ),
                            ),
                            //
                            Flexible(
                              child: AppOutlinedButton(
                                text:
                                    '${secondButtonText ?? 'Exit ${Const.appName}'}',
                                textColor: Palette.text100,
                                textColorDark: Palette.text100Dark,
                                borderColor: Colors.transparent,
                                borderColorDark: Colors.transparent,
                                onPressed: () async {
                                  if (onDecline != null) {
                                    final _result = await onDecline!.call();
                                    if (_result) await navigator.pop();
                                    return;
                                  }

                                  // ignore: unawaited_futures
                                  Theme.of(context).platform.fold(
                                        material: () => SystemChannels.platform
                                            .invokeMethod(
                                                'SystemNavigator.pop'),
                                        cupertino: () => exit(0),
                                      );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
