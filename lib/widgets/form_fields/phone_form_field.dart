import 'package:flutter/cupertino.dart';
import 'package:amatrider/core/data/response/index.dart';
import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/core/domain/validator/validator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render Form Field for Phone Inputs.
// ignore: must_be_immutable
class PhoneFormField<Reactive extends BlocBase<ReactiveState>, ReactiveState> extends StatelessWidget {
  late ReactiveState _state;

  final bool Function(ReactiveState)? validate;
  final bool Function(ReactiveState)? disabled;
  final String? Function(ReactiveState)? initial;
  final FieldObject<String?>? Function(ReactiveState)? field;
  final void Function(Reactive, String)? onChanged;
  final void Function(Reactive, CountryCode?)? onCountryChanged;
  final void Function(Reactive, CountryCode?)? onPickerBuilder;
  final int? Function(ReactiveState)? maxLength;
  final bool? Function(ReactiveState)? readOnly;
  final Option<AppHttpResponse?> Function(ReactiveState)? response;
  final TextEditingController? Function(ReactiveState)? controller;
  final List<String?>? Function(ErrorResponse)? errorField;
  final void Function(ReactiveState)? onEditingComplete;
  final InputBorder? border;
  final BorderRadius? borderRadius;
  final CupertinoFormType? cupertinoFormType;
  final EdgeInsets? cupertinoPadding;
  // final InputBorder? errorBorder;
  final FocusNode? focus;
  // final InputBorder? focusedErrorBorder;
  final String? heroTag;
  final EdgeInsets? materialPadding;
  final FocusNode? next;
  final String? prefix;
  final Widget? prefixWidget;

  PhoneFormField({
    Key? key,
    this.prefix,
    this.prefixWidget,
    this.validate,
    this.disabled,
    this.initial,
    this.field,
    this.onChanged,
    this.readOnly,
    this.focus,
    this.next,
    this.response,
    this.errorField,
    this.controller,
    this.heroTag,
    this.maxLength,
    this.cupertinoFormType,
    this.materialPadding,
    this.cupertinoPadding,
    this.borderRadius,
    this.border,
    // this.errorBorder,
    // this.focusedErrorBorder,
    this.onCountryChanged,
    this.onPickerBuilder,
    this.onEditingComplete,
  }) : super(key: key);

  Widget countryWidget(BuildContext c) => ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 0.22.w),
        child: BlocBuilder<Reactive, ReactiveState>(
          builder: (c, s) => CountryListPick(
            appBar: AppBar(
              backgroundColor: Utils.foldTheme(
                light: () => Palette.cardColorLight,
                dark: () => Palette.cardColorDark,
              ),
              elevation: 0.0,
              title: Text(
                'Choose a country',
                style: TextStyle(
                  color: Utils.platform_(
                    cupertino: Utils.foldTheme(
                      light: () => Palette.text100,
                      dark: () => Palette.text100Dark,
                    ),
                  ),
                ),
              ),
              iconTheme: IconThemeData(
                color: Utils.platform_(cupertino: Palette.accentColor),
              ),
            ),
            pickerBuilder: (_, country) => Builder(builder: (_) {
              onPickerBuilder?.call(c.read<Reactive>(), country);

              return Row(
                children: [
                  Flexible(
                    child: Image.asset(
                      '${country?.flagUri}',
                      width: 30,
                      height: 30,
                      package: 'country_list_pick',
                    ),
                  ),
                  //
                  HorizontalSpace(width: 0.02.sw),
                  //
                  Flexible(
                    child: AdaptiveText(
                      '${country?.dialCode}',
                      maxLines: 1,
                      fontSize: 18.sp,
                      maxFontSize: 16,
                      minFontSize: 10,
                      textColorDark: Utils.platform_(cupertino: Colors.black87),
                    ),
                  ),
                ],
              );
            }),
            theme: CountryTheme(
              isShowFlag: true,
              isShowTitle: true,
              isShowCode: true,
              isDownIcon: true,
              showEnglishName: true,
              searchHintText: 'Start typing..',
              initialSelection: '${Country.turkeyISO}',
              alphabetSelectedBackgroundColor: Palette.accentColor,
            ),
            initialSelection: '${Country.turkeyISO}',
            onChanged: (code) => onCountryChanged?.call(c.read<Reactive>(), code),
            useUiOverlay: true,
            useSafeArea: false,
          ),
        ),
      );

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
          prefixMode: OverlayVisibilityMode.always,
          prefixIcon: prefixWidget ?? countryWidget(c),
          initial: initial?.call(s),
          disabled: disabled?.call(s) ?? false,
          validate: validate?.call(s) ?? false,
          readOnly: readOnly?.call(s),
          controller: controller?.call(s),
          capitalization: TextCapitalization.none,
          keyboardType: TextInputType.phone,
          maxLength: maxLength?.call(s),
          borderRadius: borderRadius,
          border: border,
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp('$phonePattern'))],
          autoFillHints: [AutofillHints.telephoneNumberLocal],
          focus: focus,
          next: next,
          onChanged: (val) => onChanged?.call(c.read<Reactive>(), val),
          onEditingComplete: () => onEditingComplete?.call(s),
          errorText: field?.call(s)?.value.fold(
                (f) => f.message,
                (_) => response?.call(s).fold(
                      () => null,
                      (http) => http?.response.maybeMap(
                        error: (f) => f.errors?.phone?.firstOrNone ?? errorField?.call(f)?.firstOrNone,
                        orElse: () => null,
                      ),
                    ),
              ),
        );

        return heroTag != null && !heroTag.isBlank ? Hero(tag: heroTag!, child: _input) : _input;
      },
    );
  }
}
