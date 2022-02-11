library bottomsheet_close_button.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

/// A stateless widget to render BottomsheetCloseButton.
class BottomsheetCloseButton extends StatelessWidget {
  final bool isLoading;
  final bool showLoader;

  const BottomsheetCloseButton({
    Key? key,
    this.isLoading = false,
    this.showLoader = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: isLoading,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: App.platform.fold(
                material: () => 0.03.sw,
                cupertino: () => App.sidePadding,
              ),
            ),
            child: Theme.of(context).platform.fold(
                  material: () => AppIconButton(
                    onPressed: navigator.pop,
                    tooltip: 'Back',
                    elevation: 0.0,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: const Icon(Icons.close),
                  ),
                  cupertino: () => AdaptiveButton(
                    text: 'Close',
                    width: 0.1.sw,
                    cupertinoHeight: 0.04.sh,
                    padding: EdgeInsets.zero,
                    splashColor: App.resolveColor(
                      Colors.grey.shade300,
                      dark: Colors.grey.shade800,
                    ),
                    fontSize: 18.5.sp,
                    elevation: 0.0,
                    backgroundColor: App.resolveColor(Colors.transparent),
                    textColor: Palette.accentColor,
                    onPressed: navigator.pop,
                  ),
                ),
          ),
          //
          AnimatedVisibility(
            visible: showLoader && isLoading,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: SizedBox(
                  height: 0.06.w,
                  width: 0.06.w,
                  child: const CircularProgressBar.adaptive(strokeWidth: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
