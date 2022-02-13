import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DocumentPickerSheet extends StatelessWidget {
  final List<DocumentPicker> pickers;
  final bool pop;

  const DocumentPickerSheet({Key? key, this.pickers = const [], this.pop = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdaptiveBottomSheet(
      child: SafeArea(
        top: false,
        left: false,
        right: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: ListTile.divideTiles(
            context: context,
            tiles: pickers.map(
              (p) => AdaptiveListTile(
                noCupertinoBorder: true,
                contentPadding: EdgeInsets.zero,
                onTap: () {
                  p.onPressed.call();
                  if (pop) navigator.pop();
                },
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(child: p.asset ?? Utils.nothing),
                            //
                            HorizontalSpace(width: 0.04.sw),
                            //
                            Flexible(
                              child: AdaptiveText(
                                p.name,
                                style: TextStyle(fontSize: 17.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                      //
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ).toList(),
        ),
      ),
    );
  }
}

class DocumentPicker {
  final String name;
  final Widget? asset;
  final VoidCallback onPressed;

  DocumentPicker({required this.name, this.asset, required this.onPressed});
}
