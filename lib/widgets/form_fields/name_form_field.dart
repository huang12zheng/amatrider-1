import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Fields for Name.
// ignore: must_be_immutable
class NameFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final String? prefix;
  final String? Function(ReactiveState)? hintText;
  final TextStyle? hintStyle;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final void Function(ReactiveState)? onEditingComplete;
  final FocusNode? focus;
  final FocusNode? next;
  final String? heroTag;
  final EdgeInsets? materialPadding;
  final EdgeInsets? cupertinoPadding;
  final CupertinoFormType? cupertinoFormType;

  NameFormField({
    Key? key,
    this.prefix,
    this.hintText,
    this.hintStyle,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.heroTag,
    this.cupertinoFormType,
    this.materialPadding,
    this.cupertinoPadding,
    this.onEditingComplete,
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
          cupertinoPadding: cupertinoPadding,
          materialPadding: materialPadding,
          initial: initial?.call(s),
          keyboardType: TextInputType.name,
          disabled: disabled?.call(s) ?? false,
          capitalization: TextCapitalization.words,
          hintText: hintText?.call(s),
          hintStyle: hintStyle,
          autoFillHints: [
            AutofillHints.name,
            AutofillHints.givenName,
            AutofillHints.familyName,
            AutofillHints.middleName,
          ],
          focus: focus,
          next: next,
          validate: validate?.call(s) ?? false,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => null,
              ),
          onEditingComplete: () => onEditingComplete?.call(s),
        );

        return heroTag != null && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input) : _input;
      },
    );
  }
}
