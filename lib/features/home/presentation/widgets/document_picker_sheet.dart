import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DocumentPickerSheet extends StatelessWidget {
  final List<DocumentPicker> pickers;

  const DocumentPickerSheet({Key? key, this.pickers = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
      child: Container(
        height: 0.18.sh,
        child: SafeArea(
          top: false,
          left: false,
          right: false,
          child: LayoutBuilder(
            builder: (_, constraints) => Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...ListTile.divideTiles(
                  context: context,
                  tiles: pickers.map(
                    (p) => AdaptiveInkWell(
                      onTap: () {
                        p.onPressed.call();
                        navigator.pop();
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0.05.sw),
                        child: SizedBox(
                          height: constraints.maxHeight / pickers.length,
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

class DocumentPicker {
  final String name;
  final Widget? asset;
  final VoidCallback onPressed;

  DocumentPicker({required this.name, this.asset, required this.onPressed});
}
