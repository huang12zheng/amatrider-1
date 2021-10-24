import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';

// Normal = Cupertino Form with Cupertino Form Row & prefix
// Flat = Cupertino Form without Cupertnio Form Row
enum CupertinoFormType { textfield, row, flat }

class AdaptiveTextFormInput extends StatefulWidget {
  final void Function(String)? onChanged;
  final TextInputAction? action;
  final bool autoCorrect;
  final Iterable<String>? autoFillHints;
  final bool autoFocus;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;
  final BorderRadius? borderRadius;
  final TextCapitalization capitalization;
  final TextEditingController? controller;
  final double cupertinoInputMargin;
  final Color? cursorColor;
  final InputDecoration? decoration;
  final bool disabled;
  final bool enableSuggestions;
  final bool enableInteractiveSelection;
  final String? errorText;
  final bool expands;
  //
  final bool cupertinoUseValidator;
  final bool? filled;

  final FocusNode? focus;
  final InputBorder? focusBorder;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? initial;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final String? label;
  final TextStyle? labelStyle;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final FocusNode? next;
  final bool obscureText;
  final EdgeInsets? cupertinoPadding;
  final EdgeInsets? materialPadding;
  final Widget? prefix;
  final Widget? prefixIcon;
  //
  final bool? readOnly;
  final bool showCursor;
  final TextStyle? style;
  final Widget? suffix;
  final OverlayVisibilityMode _prefixMode;
  final OverlayVisibilityMode _suffixMode;
  final OverlayVisibilityMode _clearButtonMode;
  final ToolbarOptions? toolbarOptions;
  final bool validate;
  final CupertinoFormType? _formType;
  final VoidCallback? onTap;

  final TextAlign textAlign;
  final TextSelectionControls? selectionControls;
  final TextAlignVertical? textAlignVertical;
  final TextDirection? textDirection;

  const AdaptiveTextFormInput({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.errorBorder,
    this.borderRadius,
    this.focusedErrorBorder,
    this.decoration,
    this.readOnly,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.controller,
    this.maxLength,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    OverlayVisibilityMode? prefixMode,
    OverlayVisibilityMode? suffixMode,
    OverlayVisibilityMode? clearButtonMode,
    this.filled,
    this.cupertinoUseValidator = false,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    this.cupertinoPadding,
    this.materialPadding,
    this.cupertinoInputMargin = 8.0,
    CupertinoFormType? cupertinoFormType,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.selectionControls,
    this.textAlignVertical,
    this.textDirection,
  })  : _formType = cupertinoFormType ?? CupertinoFormType.row,
        _prefixMode = prefixMode ?? OverlayVisibilityMode.editing,
        _suffixMode = suffixMode ?? OverlayVisibilityMode.editing,
        _clearButtonMode = clearButtonMode ?? OverlayVisibilityMode.never,
        super(key: key);

  const AdaptiveTextFormInput.flat({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.errorBorder,
    this.focusedErrorBorder,
    this.borderRadius,
    this.decoration,
    this.readOnly,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.controller,
    this.maxLength,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.prefixIcon,
    this.suffix,
    OverlayVisibilityMode? prefixMode,
    OverlayVisibilityMode? suffixMode,
    OverlayVisibilityMode? clearButtonMode,
    this.filled,
    this.cupertinoUseValidator = true,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    this.cupertinoPadding,
    this.materialPadding,
    this.cupertinoInputMargin = 8.0,
    CupertinoFormType? cupertinoFormType,
    this.onTap,
    this.textAlign = TextAlign.start,
    this.selectionControls,
    this.textAlignVertical,
    this.textDirection,
  })  : _formType = cupertinoFormType ?? CupertinoFormType.row,
        _prefixMode = prefixMode ?? OverlayVisibilityMode.editing,
        _suffixMode = suffixMode ?? OverlayVisibilityMode.editing,
        _clearButtonMode = clearButtonMode ?? OverlayVisibilityMode.never,
        super(key: key);

  @override
  _AdaptiveTextFormInputState createState() => _AdaptiveTextFormInputState();
}

class _AdaptiveTextFormInputState extends State<AdaptiveTextFormInput>
    with AutomaticKeepAliveClientMixin<AdaptiveTextFormInput> {
  late TextEditingController _textEditingController;
  bool didUpdateInitial = false;

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _textEditingController =
        widget.controller ?? TextEditingController(text: widget.initial);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AdaptiveTextFormInput oldWidget) {
    if (widget.controller == null) if (widget.initial !=
            _textEditingController.text &&
        !didUpdateInitial)
      setState(() {
        _textEditingController = TextEditingController(text: widget.initial);
        didUpdateInitial = true;
      });
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => true;

  Iterable<String>? get _autoFillHints {
    if (widget.disabled) return null;
    if (widget.readOnly != null && widget.readOnly!) return null;
    return widget.autoFillHints;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // log.wtf('New Phone number ===> ${widget.controller?.text}');

    return PlatformBuilder(
      cupertino: (c) => widget._formType!.fold(
        flat: _cupertinoTextFormField(c),
        textfield: CupertinoFormRow(
          prefix: widget.prefix,
          error: widget.validate && !widget.cupertinoUseValidator
              ? widget.errorText?.let((it) => Text(it,
                      style: const TextStyle(color: Palette.errorRed))) ??
                  nil
              : nil,
          padding: widget.prefix == null
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(vertical: 9.5, horizontal: 12.0)
                  .merge(widget.cupertinoPadding),
          child: _cupertinoTextField(c),
        ),
        row: CupertinoFormRow(
          prefix: widget.prefix,
          error: widget.validate && !widget.cupertinoUseValidator
              ? widget.errorText?.let((it) => Text(it,
                      style: const TextStyle(color: Palette.errorRed))) ??
                  nil
              : nil,
          padding: widget.prefix == null
              ? EdgeInsets.zero
              : widget.cupertinoPadding ??
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
          child: _cupertinoTextFormField(c),
        ),
      ),
      material: (c) => _materialTextFormField(c),
    );
  }

  Widget _cupertinoTextFormField(BuildContext c) => CupertinoTextFormFieldRow(
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
        expands: widget.minLines == null && widget.maxLines == null
            ? widget.expands
            : false,
        enableSuggestions: widget.enableSuggestions,
        obscureText: widget.obscureText,
        autofocus: widget.autoFocus,
        autocorrect: widget.autoCorrect,
        autofillHints: _autoFillHints,
        showCursor: widget.showCursor,
        keyboardType: widget.keyboardType,
        textCapitalization: widget.capitalization,
        textInputAction: widget.next == null
            ? widget.action ?? TextInputAction.done
            : widget.action ?? TextInputAction.next,
        cursorColor: widget.cursorColor ??
            CupertinoColors.systemGrey.resolveFrom(context),
        controller: _textEditingController,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        focusNode: widget.focus,
        readOnly: widget.readOnly ?? widget.disabled,
        enabled: !widget.disabled,
        padding: widget.cupertinoPadding ??
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        inputFormatters: [
          if (widget.maxLength != null)
            LengthLimitingTextInputFormatter(widget.maxLength),
          ...widget.inputFormatters,
        ],
        style: widget.style,
        placeholder: widget.hintText,
        onTap: widget.onTap,
        placeholderStyle: TextStyle(
          color: App.resolveColor(
            Palette.text40,
            dark: Colors.white30,
          ),
        ).merge(widget.hintStyle),
        toolbarOptions: widget.toolbarOptions,
        textAlign: widget.textAlign,
        selectionControls: widget.selectionControls,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        onChanged: widget.onChanged,
        validator: (value) =>
            widget.cupertinoUseValidator ? widget.errorText : null,
        autovalidateMode: widget.validate
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        onFieldSubmitted: (_) => widget.next == null
            ? FocusScope.of(c).unfocus()
            : FocusScope.of(c).requestFocus(widget.next),
      );

  Widget _cupertinoTextField(BuildContext c) => CupertinoTextField.borderless(
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
        expands: widget.minLines == null && widget.maxLines == null
            ? widget.expands
            : false,
        enableSuggestions: widget.enableSuggestions,
        obscureText: widget.obscureText,
        autofocus: widget.autoFocus,
        autocorrect: widget.autoCorrect,
        autofillHints: _autoFillHints,
        showCursor: widget.showCursor,
        keyboardType: widget.keyboardType,
        textCapitalization: widget.capitalization,
        textInputAction: widget.next == null
            ? widget.action ?? TextInputAction.done
            : widget.action ?? TextInputAction.next,
        cursorColor: widget.cursorColor ??
            CupertinoColors.systemGrey.resolveFrom(context),
        controller: _textEditingController,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        focusNode: widget.focus,
        readOnly: widget.readOnly ?? widget.disabled,
        enabled: !widget.disabled,
        clearButtonMode: widget._clearButtonMode,
        prefix: widget.prefixIcon,
        prefixMode: widget._prefixMode,
        suffix: widget.suffix,
        suffixMode: widget._suffixMode,
        onTap: widget.onTap,
        padding: widget.cupertinoPadding ??
            const EdgeInsets.symmetric(vertical: 4.0, horizontal: 12.0),
        inputFormatters: [
          if (widget.maxLength != null)
            LengthLimitingTextInputFormatter(widget.maxLength),
          ...widget.inputFormatters,
        ],
        style: widget.style,
        placeholder: widget.hintText,
        placeholderStyle: TextStyle(
          color: App.resolveColor(
            Palette.text40,
            dark: Colors.white30,
          ),
        ).merge(widget.hintStyle),
        toolbarOptions: widget.toolbarOptions,
        textAlign: widget.textAlign,
        selectionControls: widget.selectionControls,
        textAlignVertical: widget.textAlignVertical,
        textDirection: widget.textDirection,
        onChanged: widget.onChanged,
        onSubmitted: (_) => widget.next == null
            ? FocusScope.of(c).unfocus()
            : FocusScope.of(c).requestFocus(widget.next),
      );

  Widget _materialTextFormField(BuildContext c) => Material(
        type: MaterialType.transparency,
        elevation: 0,
        child: Center(
          child: TextFormField(
            maxLines: widget.minLines == null ? widget.maxLines : null,
            minLines: widget.minLines,
            expands: widget.minLines == null && widget.maxLines == null
                ? widget.expands
                : false,
            enableSuggestions: widget.enableSuggestions,
            enableInteractiveSelection: widget.enableInteractiveSelection,
            obscureText: widget.obscureText,
            autocorrect: widget.autoCorrect,
            autofocus: widget.autoFocus,
            controller: _textEditingController,
            showCursor: widget.showCursor,
            cursorColor: widget.cursorColor ??
                Utils.foldTheme(
                  light: () => Palette.accentColor,
                  dark: () => Colors.white70,
                ),
            keyboardType: widget.keyboardType,
            textCapitalization: widget.capitalization,
            textInputAction: widget.next == null
                ? widget.action ?? TextInputAction.done
                : widget.action ?? TextInputAction.next,
            focusNode: widget.focus,
            readOnly: widget.readOnly ?? widget.disabled,
            enabled: !widget.disabled,
            onTap: widget.onTap,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
              labelText: widget.label,
              labelStyle: widget.labelStyle,
              border: widget.border,
              focusedErrorBorder: widget.focusedErrorBorder,
              errorBorder: widget.errorBorder,
              filled: widget.filled,
              contentPadding: widget.materialPadding,
              focusedBorder: widget.focusBorder ?? widget.border,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffix,
              enabled: !widget.disabled,
            ).merge(widget.decoration),
            autofillHints: _autoFillHints,
            inputFormatters: [
              if (widget.maxLength != null)
                LengthLimitingTextInputFormatter(widget.maxLength),
              ...widget.inputFormatters,
            ],
            textAlign: widget.textAlign,
            selectionControls: widget.selectionControls,
            textAlignVertical: widget.textAlignVertical,
            textDirection: widget.textDirection,
            toolbarOptions: widget.toolbarOptions,
            style: widget.style,
            autovalidateMode: widget.validate
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            onChanged: widget.onChanged,
            validator: (value) => widget.errorText,
            onFieldSubmitted: (_) => widget.next == null
                ? FocusScope.of(c).unfocus()
                : FocusScope.of(c).requestFocus(widget.next),
          ),
        ),
      );
}

extension on CupertinoFormType {
  T fold<T>({
    required T textfield,
    required T row,
    required T flat,
  }) {
    switch (this) {
      case CupertinoFormType.textfield:
        return textfield;
      case CupertinoFormType.flat:
        return flat;
      case CupertinoFormType.row:
      default:
        return row;
    }
  }
}
