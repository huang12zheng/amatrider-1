import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render EditBankDetailsScreen.
class EditBankDetailsScreen extends StatelessWidget with AutoRouteWrapper {
  const EditBankDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ).copyWith(top: 0.02.sw),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AdaptiveText(
                'Account Information',
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              AdaptiveText(
                'Please enter the account details you would like to use in getting paid.',
                fontSize: 17.sp,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Bank Name',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              DropdownFieldWidget(
                items: [
                  'Access Bank (Diamond)',
                  'Guarantee Trust Bank',
                  'Zenith Bank'
                ],
                text: (it) => '$it',
                selected: 'Access Bank (Diamond)',
                onChanged: (val) {},
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Account Name',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              const AdaptiveTextFormInput(),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Account Number',
                fontSize: 16.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              const AdaptiveTextFormInput(),
              //
              VerticalSpace(height: 0.1.sw),
              //
              AppButton(
                text: 'Save',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
