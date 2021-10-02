import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Fields for Name.
// ignore: must_be_immutable
class ReactiveTextFormField<Reactive extends Cubit<ReactiveState>,
    ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final int? minLines;
  final String? prefix;
  final String? heroTag;
  final EdgeInsets? padding;
  final CupertinoFormType? cupertinoFormType;
  final Iterable<String>? autoFillHints;
  final TextInputType keyboardType;
  final TextInputAction? action;
  final TextCapitalization capitalization;
  final FocusNode? focus;
  final FocusNode? next;
  final bool? Function(ReactiveState)? readOnly;
  final String? Function(ReactiveState)? hintText;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final TextEditingController? Function(ReactiveState)? controller;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final List<String?>? Function(ErrorResponse)? errorField;
  final void Function(Reactive, ReactiveState)? onTap;

  ReactiveTextFormField({
    Key? key,
    this.minLines,
    this.prefix,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.heroTag,
    this.hintText,
    this.readOnly,
    this.cupertinoFormType,
    this.controller,
    this.padding,
    this.autoFillHints,
    this.action,
    this.keyboardType = TextInputType.none,
    this.capitalization = TextCapitalization.none,
    this.response,
    this.errorField,
    this.onTap,
  }) : super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        var _input = AdaptiveTextFormInput(
          minLines: minLines,
          cupertinoFormType: cupertinoFormType,
          padding: padding,
          prefix: App.platform.fold(
            material: () => null,
            cupertino: () =>
                prefix == null ? null : TextFormInputLabel(text: prefix!),
          ),
          initial: initial?.call(s),
          controller: controller?.call(s),
          keyboardType: keyboardType,
          action: action,
          disabled: disabled?.call(s) ?? false,
          capitalization: capitalization,
          autoFillHints: autoFillHints,
          focus: focus,
          next: next,
          readOnly: readOnly?.call(s),
          hintText: hintText?.call(s),
          validate: validate?.call(s) ?? false,
          onTap: () => onTap?.call(c.read<Reactive>(), s),
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) => errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
        );

        return heroTag != null && !heroTag.isBlank
            ? Hero(tag: heroTag!, child: _input)
            : _input;
      },
    );
  }
}
