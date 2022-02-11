import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render EmptyStateWidget.
class EmptyStateWidget extends StatelessWidget with AutoRouteWrapper {
  final Either<String, Widget> asset;
  final String title;
  final String? description;
  final String? buttonText;
  final VoidCallback? onButtonPressed;
  final VoidCallback? onBackPressed;
  final double width;
  final double? imageWidth;
  final double height;
  final double? imageHeight;
  final double? titleGap;
  final double? descriptionGap;
  final double? buttonGap;
  final bool isLoading;
  final bool centerTitle;
  final bool centerAsset;
  final bool centerDescription;
  final bool useScaffold;

  const EmptyStateWidget({
    Key? key,
    required this.asset,
    required this.title,
    this.description,
    this.width = double.infinity,
    this.height = double.infinity,
    this.imageWidth,
    this.imageHeight,
    this.isLoading = false,
    this.centerTitle = true,
    this.centerAsset = true,
    this.centerDescription = true,
    this.titleGap,
    this.descriptionGap,
    this.buttonGap,
    this.buttonText,
    this.onButtonPressed,
    this.onBackPressed,
    this.useScaffold = true,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return useScaffold ? AdaptiveScaffold(body: _child) : _child;
  }

  Widget get _child => SizedBox(
        height: height,
        width: width,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(App.sidePadding),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: centerAsset ? Alignment.center : Alignment.centerLeft,
                  child: asset.fold(
                    (_asset) => Image.asset(
                      _asset,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.contain,
                    ),
                    (widget) => widget,
                  ),
                ),
                //
                VerticalSpace(height: titleGap ?? 0.06.sw),
                //
                Align(
                  alignment: centerTitle ? Alignment.center : Alignment.centerLeft,
                  child: AdaptiveText(
                    '$title',
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                    letterSpacing: Utils.letterSpacing,
                    textAlign: centerTitle ? TextAlign.center : TextAlign.left,
                  ),
                ),
                //
                ...description?.let((it) => [
                          VerticalSpace(height: descriptionGap ?? 0.04.sw),
                          //
                          Align(
                            alignment: centerDescription ? Alignment.center : Alignment.centerLeft,
                            child: AdaptiveText(
                              '$description',
                              fontSize: 18.sp,
                              textAlign: centerDescription ? TextAlign.center : TextAlign.left,
                              letterSpacing: Utils.letterSpacing,
                            ),
                          ),
                        ]) ??
                    [Utils.nothing],
                //
                VerticalSpace(height: buttonGap ?? 0.08.sw),
                //
                buttonText?.let(
                      (it) => AppButton(
                        text: buttonText,
                        isLoading: isLoading,
                        onPressed: onButtonPressed,
                      ),
                    ) ??
                    Utils.nothing,
                //
              ],
            ),
          ),
        ),
      );
}
