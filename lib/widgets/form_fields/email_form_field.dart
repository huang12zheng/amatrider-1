import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Email Address.
// ignore: must_be_immutable
class EmailFormField<Reactive extends Cubit<ReactiveState>, ReactiveState>
    extends StatelessWidget {
  late ReactiveState _state;

  final String? prefix;
  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final bool? Function(ReactiveState)? readOnly;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final FocusNode? focus;
  final FocusNode? next;
  final bool useHero;
  final EdgeInsets? materialPadding;
  final EdgeInsets? cupertinoPadding;
  final CupertinoFormType? cupertinoFormType;

  EmailFormField({
    Key? key,
    this.prefix,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.focus,
    this.next,
    this.response,
    this.useHero = true,
    this.cupertinoFormType,
    this.materialPadding,
    this.cupertinoPadding,
    this.readOnly,
  }) : super(key: key);

  ReactiveState get state => _state;

  set __state(ReactiveState value) => _state = value;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Reactive, ReactiveState>(
      builder: (c, s) {
        __state = s;

        return Hero(
          tag: useHero ? Const.emailFieldHeroTag : UniqueId<String>.v4().value!,
          child: AdaptiveTextFormInput(
            cupertinoFormType: cupertinoFormType,
            cupertinoPadding: cupertinoPadding,
            materialPadding: materialPadding,
            prefix: App.platform.fold(
              material: () => null,
              cupertino: () =>
                  prefix == null ? null : TextFormInputLabel(text: prefix!),
            ),
            initial: initial?.call(s),
            disabled: disabled?.call(s) ?? false,
            validate: validate?.call(s) ?? false,
            readOnly: readOnly?.call(s),
            capitalization: TextCapitalization.none,
            keyboardType: TextInputType.emailAddress,
            autoFillHints: [AutofillHints.email],
            focus: focus,
            next: next,
            onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
            errorText: field?.call(s)?.value.fold(
                  (f) => f.message,
                  (_) => response?.call(s).fold(
                        () => null,
                        (http) => http?.response.maybeMap(
                          error: (f) => f.errors?.email?.firstOrNone,
                          orElse: () => null,
                        ),
                      ),
                ),
          ),
        );
      },
    );
  }
}
