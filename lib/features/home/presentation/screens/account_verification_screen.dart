import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/palette.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

/// A stateless widget to render AccountVerificationScreen.
class AccountVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  static const _list = [
    'Government-Issued ID Card',
    'International Passport',
    'Driver’s License',
  ];
  const AccountVerificationScreen({Key? key}) : super(key: key);

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AdaptiveText(
                    'Account Verification',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //
                  const CustomChipWidget(
                    'Unverified',
                    backgroundColor: Palette.pastelYellow,
                    textColor: Palette.yellow,
                  ),
                ],
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              AdaptiveText(
                'Kindly provide one of the required document to verify account.',
                fontSize: 17.sp,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Palette.pastelYellow,
                  borderRadius: BorderRadius.circular(
                    Utils.inputBorderRadius,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 0.035.sw,
                    vertical: 0.03.sw,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.info,
                        color: Palette.accentYellow,
                      ),
                      //
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 0.03.sw),
                          child: AdaptiveText(
                            'Please upload a clear, '
                            'visible photo of the original ID. '
                            'Over exposure or reflection will also lead to failure.',
                            fontSize: 17.sp,
                            textColor: Palette.text100,
                            fontWeight: FontWeight.w400,
                            height: 1.6,
                            letterSpacing: Utils.letterSpacing,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Headline(
                'Country of Issue',
                fontSize: 17.sp,
                textColor: Palette.neutralLabel,
                textColorDark: Palette.neutralLabelDark,
              ),
              //
              VerticalSpace(height: 0.02.sw),
              //
              DropdownFieldWidget<String>(
                items: ['Cameroon', 'Turkey', 'France', 'United Kingdom'],
                selected: 'Turkey',
                text: (it) => '$it',
                onChanged: (val) {},
              ),
              //
              VerticalSpace(height: 0.05.sw),
              //
              AdaptiveText(
                'Use a valid government-issued document',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              //
              VerticalSpace(height: 0.03.sw),
              //
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, i) => i != _list.length
                    ? VerticalSpace(height: 0.04.sw)
                    : Utils.nothing,
                itemBuilder: (_, i) => AdaptiveListTile(
                  leading: const Icon(AmatNow.id_icon),
                  title: AdaptiveText('${_list.elementAt(i)}'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      Utils.inputBorderRadius,
                    ),
                  ),
                  tileColor: Palette.neutralF5,
                  horizontalTitleGap: 0.01.sw,
                  onTap: () {},
                ),
                itemCount: _list.length,
              ),
              //
              VerticalSpace(height: 0.1.sw),
              //
              AppButton(
                text: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
