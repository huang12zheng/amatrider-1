library reactive_text_form_field.dart;

import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Fields for Name.
class ReactiveTextFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  final ReactiveState? state;
  final bool? Function(ReactiveState)? readOnly;
  final String? Function(ReactiveState)? hintText;
  final TextStyle? hintStyle;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final TextEditingController? Function(ReactiveState)? controller;
  final FieldObject<Object?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final void Function(ReactiveState)? onEditingComplete;
  final List<String?>? Function(ErrorResponse)? errorField;
  final void Function(Reactive, ReactiveState)? onTap;
  final TextInputAction? action;
  final Iterable<String>? autoFillHints;
  final TextCapitalization capitalization;
  final CupertinoFormType? cupertinoFormType;
  final EdgeInsets? cupertinoPadding;
  final FocusNode? focus;
  final String? heroTag;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final EdgeInsets? materialPadding;
  final int? minLines;
  final int? maxLength;
  final bool? Function(ReactiveState)? showMaxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;
  final FocusNode? next;
  final String? prefix;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const ReactiveTextFormField({
    Key? key,
    this.state,
    this.minLines,
    this.prefix,
    this.prefixIcon,
    this.suffixIcon,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.heroTag,
    this.hintText,
    this.hintStyle,
    this.readOnly,
    this.cupertinoFormType,
    this.controller,
    this.materialPadding,
    this.cupertinoPadding,
    this.autoFillHints,
    this.inputFormatters = const [],
    this.action,
    this.keyboardType = TextInputType.none,
    this.capitalization = TextCapitalization.none,
    this.response,
    this.errorField,
    this.onTap,
    this.onEditingComplete,
    this.showMaxLength,
    this.maxLength,
    this.maxLengthEnforcement,
  }) : super(key: key);

  Widget _input(ReactiveState s) => Builder(
        builder: (c) => AdaptiveTextFormInput(
          minLines: minLines,
          cupertinoFormType: cupertinoFormType,
          cupertinoPadding: cupertinoPadding,
          materialPadding: materialPadding,
          showMaxLength: showMaxLength?.call(s) ?? false,
          maxLength: maxLength,
          maxLengthEnforcement: maxLengthEnforcement,
          prefixIcon: prefixIcon,
          suffix: suffixIcon,
          initial: initial?.call(s),
          controller: controller?.call(s),
          keyboardType: keyboardType,
          action: action,
          disabled: disabled?.call(s) ?? false,
          capitalization: capitalization,
          autoFillHints: autoFillHints,
          focus: focus,
          next: next,
          hintStyle: hintStyle,
          inputFormatters: inputFormatters,
          readOnly: readOnly?.call(s),
          hintText: hintText?.call(s),
          validate: validate?.call(s) ?? false,
          onTap: () => onTap?.call(c.read<Reactive>(), s),
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          onEditingComplete: () => onEditingComplete?.call(s),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(error: (f) => errorField?.call(f)?.firstOrNone, orElse: () => null),
                    ),
              ),
        ),
      );

  Widget _child(ReactiveState s) => heroTag != null && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input(s)) : _input(s);

  @override
  Widget build(BuildContext context) {
    return WidgetVisibility(
      visible: state == null,
      replacement: state != null ? _child(state!) : Utils.nothing,
      child: BlocBuilder<Reactive, ReactiveState>(builder: (c, s) => _child(s)),
    );
  }
}
