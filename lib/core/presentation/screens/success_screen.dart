library success_screen.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';

/// A stateful widget to render SuccessScreen.
class SuccessScreen extends StatefulWidget with AutoRouteWrapper {
  final Widget? svg;
  final Widget? image;
  final String? lottieJson;
  final String title;
  final String? description;
  final String? buttonText;
  final Duration animationDuration;
  final BoxFit fit;
  final double? width;
  final double? height;
  final VoidCallback? onButtonPressed;
  final VoidCallback? onBackPressed;
  final Future<void> Function()? onInitState;

  const SuccessScreen({
    Key? key,
    this.svg,
    this.image,
    this.lottieJson,
    required this.title,
    this.description,
    this.buttonText,
    this.animationDuration = const Duration(milliseconds: 1600),
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    this.onButtonPressed,
    this.onBackPressed,
    this.onInitState,
  })  : assert((svg != null && image == null && lottieJson == null) ||
            (svg == null && image != null && lottieJson == null) ||
            (svg == null && image == null && lottieJson != null)),
        super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _SuccessScreenState extends State<SuccessScreen>
    with
        SingleTickerProviderStateMixin<SuccessScreen>,
        AutomaticKeepAliveClientMixin<SuccessScreen> {
  bool isInit = true;
  late AnimationController lottieAnim;

  @override
  void dispose() {
    lottieAnim.dispose();
    super.dispose();
  }

  @override
  void initState() {
    lottieAnim = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    super.initState();
  }

  @override
  void didChangeDependencies() async {
    if (widget.onInitState != null && isInit) {
      await widget.onInitState!.call();
      setState(() => isInit = false);
    }

    super.didChangeDependencies();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return AdaptiveScaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(App.sidePadding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Builder(builder: (_) {
                  if (widget.image != null)
                    return Image.asset(
                      '${widget.image}',
                      width: widget.width,
                      height: widget.height,
                      fit: BoxFit.contain,
                    );
                  if (widget.svg != null) return widget.svg!;
                  if (widget.lottieJson != null)
                    return Lottie.asset(
                      '${widget.lottieJson}',
                      controller: lottieAnim,
                      fit: widget.fit,
                      width: widget.width,
                      height: widget.height,
                      options: LottieOptions(enableMergePaths: true),
                      onLoaded: (composition) => lottieAnim.repeat(),
                    );
                  return Utils.nothing;
                }),
              ),
              //
              VerticalSpace(height: 0.06.sw),
              //
              Align(
                alignment: Alignment.center,
                child: AdaptiveText(
                  '${widget.title}',
                  fontWeight: FontWeight.w600,
                  fontSize: 22.sp,
                  letterSpacing: Utils.letterSpacing,
                  textAlign: TextAlign.center,
                ),
              ),
              //
              ...widget.description?.let((it) => [
                        VerticalSpace(height: 0.04.sw),
                        //
                        Align(
                          alignment: Alignment.center,
                          child: AdaptiveText(
                            '${widget.description}',
                            fontSize: 18.sp,
                            textAlign: TextAlign.center,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ),
                      ]) ??
                  [Utils.nothing],
              //
              VerticalSpace(height: 0.08.sw),
              //
              widget.buttonText?.let(
                    (it) => AppButton(
                      text: widget.buttonText,
                      onPressed: widget.onButtonPressed,
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
}
