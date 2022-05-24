library service_access_widget.dart;

import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render LocationPermissionScreen.
class LocationPermissionScreen extends StatelessWidget with AutoRouteWrapper {
  final VoidCallback onAccepted;
  final VoidCallback onDeclined;

  const LocationPermissionScreen({
    Key? key,
    required this.onAccepted,
    required this.onDeclined,
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
    return AdaptiveScaffold(
      body: AdaptiveScaffoldBody(
        builder: (c) => Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(color: App.resolveColor(Palette.primaryColor, dark: Palette.secondaryColor)),
              ),
            ),
            //
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 0.25.h,
              child: SafeArea(
                left: false,
                right: false,
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: AdaptiveText(
                          'Kindly Grant Location Access',
                          maxLines: 2,
                          fontSize: 24.sp,
                          minFontSize: 17,
                          maxFontSize: 25,
                          fontWeight: FontWeight.w600,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      //
                      Flexible(
                        child: AdaptiveText(
                          '${Const.appName} requests location permission to calculate accurate distance between pickup and destination and to calculate the delivery time.',
                          minFontSize: 15,
                          fontSize: 17.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Positioned(
              top: 0.23.h,
              left: 0,
              right: 0,
              height: 0.4.h,
              child: SizedBox(
                height: 0.4.h,
                width: 1.w,
                child: AppAssets.groupEllipse,
              ),
            ),
            //
            Positioned.fill(
              top: Utils.platform_(material: 0.64.h, cupertino: 0.6.h),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Palette.accent20,
                  border: Border(
                    top: BorderSide(color: Palette.accentColor.shade100),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(bottom: App.sidePadding, top: 0.03.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
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
                              child: AdaptiveText.rich(
                                const TextSpan(children: [
                                  TextSpan(text: 'It’s safe to grant '),
                                  TextSpan(
                                    text: '${Const.appName}',
                                    style: TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                  TextSpan(text: ' location access. '),
                                  TextSpan(
                                    text: 'It makes the system work better. ',
                                  ),
                                  // TextSpan(text: 'Thank you.'),
                                ]),
                                softWrap: true,
                                maxLines: 3,
                                fontSize: 17.sp,
                                minFontSize: 15,
                                textColor: Palette.text100,
                                textColorDark: Palette.text100,
                                fontWeight: FontWeight.w400,
                                letterSpacing: Utils.letterSpacing,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      Flexible(
                        flex: 5,
                        child: SafeArea(
                          top: false,
                          left: false,
                          right: false,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Flexible(
                                child: BlocSelector<LocationCubit, LocationState, bool>(
                                  selector: (s) => s.isLoading,
                                  builder: (c, isLoading) => AppButton(
                                    text: 'Grant Access',
                                    // disabled: isLoading,
                                    onPressed: () async {
                                      final _granted = await c.read<LocationCubit>().requestPermission();

                                      if (_granted) {
                                        await navigator.pop(true);
                                        onAccepted();
                                      }
                                    },
                                  ),
                                ),
                              ),
                              //
                              Flexible(
                                child: AppOutlinedButton(
                                  text: 'Skip',
                                  textColor: Palette.text100,
                                  textColorDark: Palette.text100,
                                  borderColor: Colors.transparent,
                                  borderColorDark: Colors.transparent,
                                  fontWeight: FontWeight.w600,
                                  splashColorDark: Colors.transparent,
                                  onPressed: () {
                                    navigator.pop();
                                    onDeclined();
                                  },
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
            ),
          ],
        ),
      ),
    );
  }
}
