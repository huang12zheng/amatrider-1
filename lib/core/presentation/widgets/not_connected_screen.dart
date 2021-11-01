import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// A stateless widget to render NotConnectedScreen.
class NotConnectedScreen extends StatefulWidget with AutoRouteWrapper {
  final Future<dynamic> future;

  const NotConnectedScreen({Key? key, required this.future}) : super(key: key);

  @override
  State<NotConnectedScreen> createState() => _NotConnectedScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _NotConnectedScreenState extends State<NotConnectedScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        physics: Utils.physics,
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverPadding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.032.sw,
            ).copyWith(top: 0.01.sw),
            sliver: SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppAssets.noConnectivity(),
                        //
                        VerticalSpace(height: 0.05.sw),
                        //
                        AdaptiveText(
                          'No internet Connection',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.04.sw),
                        //
                        AdaptiveText.rich(
                          TextSpan(children: [
                            const TextSpan(text: 'Please check your network '),
                            TextSpan(
                              text: 'settings.',
                              recognizer: TapGestureRecognizer()..onTap = () {},
                              style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Palette.accentColor,
                              ),
                            ),
                          ]),
                          minFontSize: 13,
                          style: TextStyle(
                            fontSize: 17.sp,
                            // height: 2.0,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.06.sw),
                        //
                        AppButton(
                          text: 'Retry',
                          isLoading: isLoading,
                          onPressed: () async {
                            setState(() => isLoading = true);
                            await widget.future;
                            setState(() => isLoading = false);
                          },
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
    );
  }
}
