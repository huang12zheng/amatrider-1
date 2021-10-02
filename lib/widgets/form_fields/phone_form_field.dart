import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Phone Inputs.
// ignore: must_be_immutable
class PhoneFormField<Reactive extends Cubit<ReactiveState>, ReactiveState>
    extends StatelessWidget {
  late ReactiveState _state;

  final String? prefix;
  final Widget? prefixWidget;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final int? Function(ReactiveState)? maxLength;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final TextEditingController? Function(ReactiveState)? controller;
  final FocusNode? focus;
  final FocusNode? next;
  final String? heroTag;
  final EdgeInsets? padding;
  final CupertinoFormType? cupertinoFormType;
  final BorderRadius? borderRadius;
  final InputBorder? border;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;

  PhoneFormField({
    Key? key,
    this.prefix,
    this.prefixWidget,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.response,
    this.controller,
    this.heroTag,
    this.maxLength,
    this.cupertinoFormType,
    this.padding,
    this.borderRadius,
    this.border,
    this.errorBorder,
    this.focusedErrorBorder,
  }) : super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        var _input = AdaptiveTextFormInput(
          cupertinoFormType: cupertinoFormType,
          padding: padding,
          prefix: App.platform.fold(
            material: () => prefixWidget,
            cupertino: () =>
                prefix == null ? null : TextFormInputLabel(text: prefix!),
          ),
          initial: initial?.call(s),
          disabled: disabled?.call(s) ?? false,
          validate: validate?.call(s) ?? false,
          controller: controller?.call(s),
          capitalization: TextCapitalization.none,
          keyboardType: TextInputType.phone,
          maxLength: maxLength?.call(s),
          borderRadius: borderRadius,
          border: border,
          errorBorder: errorBorder,
          focusedErrorBorder: focusedErrorBorder,
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp('[0-9]+'))
          ],
          autoFillHints: [
            AutofillHints.telephoneNumber,
            AutofillHints.telephoneNumberLocal,
            AutofillHints.telephoneNumberNational,
          ],
          focus: focus,
          next: next,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) => f.errors?.phone?.firstOrNone,
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
