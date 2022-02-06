import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/adaptive/adaptive.dart';
import 'package:flutter/material.dart';

class DropdownFieldWidget<Model> extends StatelessWidget {
  static const EdgeInsetsGeometry kdropdownContentPadding =
      EdgeInsets.symmetric(vertical: 7.0, horizontal: 12.0);

  static const double kdropdownHeight = 46;
  static const double kErrorHeightDiff = 21;

  final String? Function(Model?)? text;
  final Widget? Function(Model?)? child;
  final void Function(Model?) onChanged;
  final bool alignedDropdown;
  final AlignmentDirectional alignment;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final BorderRadius? borderRadius;
  final Color? buttonColor;
  final Color? backgroundColorLight;
  final Color? backgroundColorDark;
  final ColorScheme? colorScheme;
  final EdgeInsetsGeometry? contentPadding;
  final InputDecoration? decoration;
  final bool disabled;
  final String disabledHint;
  final Widget? disabledHintWidget;
  final Color? dropdownColor;
  final int elevation;
  final String? errorText;
  final double? height;
  final Color? highlightColor;
  final String hint;
  final Widget? hintWidget;
  final Color? iconDisabledColor;
  final Color? iconEnabledColor;
  final double iconSize;
  final bool isDense;
  final bool isExpanded;
  final double? itemFontSize;
  final FontWeight? itemFontWeight;
  final List<Model?> items;
  final int maxLines;
  final double? menuMaxHeight;
  final double minFontSize;
  final double? radius;
  final Model? selected;
  final ShapeBorder? shape;
  final Color? splashColor;
  final bool validate;
  final List<Widget> Function(BuildContext)? selectedItemBuilder;

  const DropdownFieldWidget({
    Key? key,
    this.radius,
    required this.items,
    this.text,
    this.child,
    this.hint = '-- Choose --',
    this.hintWidget,
    this.disabledHint = '-- Invalid selection --',
    this.disabledHintWidget,
    required this.selected,
    this.validate = false,
    this.errorText,
    this.disabled = false,
    this.iconSize = 19.0,
    this.isDense = false,
    this.isExpanded = true,
    this.alignedDropdown = false,
    required this.onChanged,
    this.maxLines = 1,
    this.minFontSize = 12,
    this.buttonColor,
    this.itemFontSize,
    this.itemFontWeight,
    this.highlightColor,
    this.backgroundColorLight,
    this.backgroundColorDark,
    this.colorScheme,
    this.splashColor,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
    this.shape,
    this.contentPadding,
    this.alignment = AlignmentDirectional.centerStart,
    this.borderRadius,
    this.elevation = 8,
    this.dropdownColor,
    this.height,
    this.iconDisabledColor,
    this.iconEnabledColor,
    this.menuMaxHeight,
    this.decoration,
    this.selectedItemBuilder,
  }) : super(key: key);

  // bool get _showErrors => validate == true && !errorText.isNullOrBlank;

  double get _height => validate && !errorText.isNullOrBlank
      ? height != null
          ? height! + kErrorHeightDiff
          : kdropdownHeight + kErrorHeightDiff
      : height ?? kdropdownHeight;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: disabled,
      child: PlatformBuilder(
        cupertino: (_) => const SizedBox.shrink(),
        material: (_) => SizedBox(
          height: _height,
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: alignedDropdown,
              layoutBehavior: ButtonBarLayoutBehavior.constrained,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              buttonColor: buttonColor,
              highlightColor: highlightColor,
              splashColor: splashColor,
              colorScheme: colorScheme,
              shape: shape ??
                  RoundedRectangleBorder(
                    side: BorderSide(
                      color: Utils.foldTheme(
                        light: () =>
                            backgroundColorLight ?? Palette.inputBgColor,
                        dark: () =>
                            backgroundColorDark ??
                            backgroundColorLight ??
                            Palette.secondaryColor.shade400,
                      ),
                    ),
                    borderRadius: borderRadius ??
                        BorderRadius.circular(
                            radius ?? Utils.inputBorderRadius),
                  ),
              child: DropdownButtonFormField<Model?>(
                autovalidateMode: validate
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                decoration: InputDecoration(
                  border: border,
                  errorBorder: errorBorder,
                  focusedErrorBorder: focusedErrorBorder,
                  contentPadding: contentPadding?.let(
                        (it) => kdropdownContentPadding.add(it),
                      ) ??
                      kdropdownContentPadding,
                ).merge(decoration),
                alignment: alignment,
                elevation: elevation,
                dropdownColor: dropdownColor,
                isDense: isDense,
                itemHeight: kMinInteractiveDimension,
                validator: (value) => errorText,
                iconDisabledColor: iconDisabledColor,
                iconEnabledColor: iconEnabledColor,
                menuMaxHeight: menuMaxHeight,
                selectedItemBuilder: (_) => items
                    .map((iv) =>
                        child?.call(iv) ??
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AdaptiveText(
                            '${text?.call(iv)}',
                            maxLines: maxLines,
                            minFontSize: minFontSize,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            fontSize: itemFontSize,
                            fontWeight: itemFontWeight,
                          ),
                        ))
                    .toList(),
                items: items
                    .map(
                      (item) => DropdownMenuItem<Model?>(
                        value: item,
                        alignment: Alignment.centerLeft,
                        child: child?.call(item) ??
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: AdaptiveText(
                                    '${text?.call(item) ?? "- Please set 'text' property -"}',
                                    maxLines: maxLines,
                                    minFontSize: minFontSize,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    fontSize: itemFontSize,
                                    fontWeight: itemFontWeight,
                                  ),
                                ),
                                if (item == selected)
                                  Icon(
                                    Icons.check_circle,
                                    size: 20,
                                    color: iconEnabledColor ??
                                        Palette.accentColor.shade400,
                                  ),
                              ],
                            ),
                      ),
                    )
                    .toList(),
                disabledHint: disabledHintWidget ??
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AdaptiveText(
                        disabledHint,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                hint: hintWidget ??
                    Align(
                      alignment: Alignment.centerLeft,
                      child: AdaptiveText(
                        hint,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                    ),
                value: selected,
                isExpanded: isExpanded,
                icon: const Icon(Icons.keyboard_arrow_down),
                iconSize: iconSize,
                onChanged: onChanged,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
