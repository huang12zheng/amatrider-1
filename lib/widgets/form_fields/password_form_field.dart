import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Passwords.
// ignore: must_be_immutable
class PasswordFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final bool Function(ReactiveState) isObscured;
  final Widget? Function(ReactiveState)? suffixIcon;
  final void Function(ReactiveState)? onEditingComplete;
  final OverlayVisibilityMode Function(ReactiveState)? suffixMode;
  final void Function(Reactive)? onToggle;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final List<String?>? Function(ErrorResponse)? errorField;
  final String? Function(ReactiveState)? hintText;
  final CupertinoFormType? cupertinoFormType;
  final FocusNode? focus;
  final String? heroTag;
  final bool isNew;
  final FocusNode? next;
  final EdgeInsets? materialPadding;
  final EdgeInsets? cupertinoPadding;
  final String? prefix;
  final bool useHero;

  PasswordFormField({
    Key? key,
    this.prefix,
    this.validate,
    this.disabled,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.response,
    this.useHero = true,
    this.isNew = true,
    required this.isObscured,
    this.onToggle,
    this.suffixIcon,
    this.errorField,
    this.heroTag,
    this.cupertinoFormType,
    this.hintText,
    this.materialPadding,
    this.cupertinoPadding,
    this.suffixMode,
    this.onEditingComplete,
  })  : assert((useHero == false && heroTag != null) || (useHero == false && heroTag == null) || (useHero == true && heroTag != null)),
        super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  Widget _passwordToggle(BuildContext c, ReactiveState s) => Material(
        type: MaterialType.transparency,
        shape: const CircleBorder(),
        clipBehavior: Clip.hardEdge,
        child: IconButton(
          onPressed: () => onToggle?.call(c.read<Reactive>()),
          icon: Icon(
            isObscured.call(s) ? AmatNow.eye_closed : AmatNow.eye_open,
            color: App.resolveColor(
              Palette.text60,
              dark: Palette.text100Dark,
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        var _input = AdaptiveTextFormInput(
          cupertinoFormType: cupertinoFormType,
          materialPadding: materialPadding,
          enableSuggestions: false,
          autoCorrect: false,
          obscureText: isObscured.call(s),
          hintText: hintText?.call(s),
          disabled: disabled?.call(s) ?? false,
          validate: validate?.call(s) ?? false,
          capitalization: TextCapitalization.none,
          keyboardType: TextInputType.visiblePassword,
          autoFillHints: [
            if (isNew) AutofillHints.newPassword,
            AutofillHints.password,
          ],
          focus: focus,
          next: next,
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
          decoration: suffixIcon?.call(s) == null ? InputDecoration(suffixIcon: _passwordToggle(c, s)) : null,
          suffix: suffixIcon?.call(s) ?? _passwordToggle(c, s),
          suffixMode: suffixMode?.call(s) ?? OverlayVisibilityMode.always,
          onEditingComplete: () => onEditingComplete?.call(s),
        );

        return useHero && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input) : _input;
      },
    );
  }
}
