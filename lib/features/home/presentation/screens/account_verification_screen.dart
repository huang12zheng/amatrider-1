library account_verification_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/palette.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'account_verification_screen.part.dart';

/// A stateless widget to render AccountVerificationScreen.
class AccountVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  const AccountVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<VerificationCubit>()..fetchCountries(),
      child: BlocListener<VerificationCubit, VerificationState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (res) => PopupDialog.success(
              duration: const Duration(seconds: 4),
              message: res.message,
              listener: (status) => status?.fold(
                dismissed: () {
                  navigator.popUntil(
                      (_) => navigator.current.name == DashboardRoute.name);
                },
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAlias,
        controller: ScrollController(),
        physics: Utils.physics,
        padding: EdgeInsets.symmetric(horizontal: App.sidePadding)
            .copyWith(top: 0.02.sw),
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
            DecoratedBox(
              decoration: BoxDecoration(
                color: Palette.neutralF5,
                borderRadius: BorderRadius.circular(
                  Utils.inputBorderRadius,
                ),
              ),
              child: AdaptiveListTile(
                dense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                trailing: const Icon(Icons.arrow_drop_down),
                title: BlocBuilder<VerificationCubit, VerificationState>(
                  builder: (c, s) => CountryListPick(
                    appBar: AppBar(
                      backgroundColor: Utils.foldTheme(
                        light: () => Palette.cardColorLight,
                        dark: () => Palette.cardColorDark,
                      ),
                      elevation: 0.0,
                      title: const Text('Choose a country'),
                    ),
                    pickerBuilder: (context, countryCode) => Row(
                      children: [
                        Flexible(
                          child: Image.asset(
                            '${countryCode?.flagUri}',
                            width: 30,
                            height: 30,
                            package: 'country_list_pick',
                          ),
                        ),
                        //
                        HorizontalSpace(width: 0.03.sw),
                        //
                        Flexible(
                          child: AdaptiveText(
                            '${countryCode?.toCountryStringOnly()}',
                            fontSize: 16.5.sp,
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
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
                    onChanged: c.read<VerificationCubit>().countryChanged,
                    useUiOverlay: true,
                    useSafeArea: false,
                  ),
                ),
              ),
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
            BlocBuilder<VerificationCubit, VerificationState>(
              buildWhen: (p, c) => p.documentID != c.documentID,
              builder: (c, s) => ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (_, i) => i != DocumentID.values.length
                    ? VerticalSpace(height: 0.04.sw)
                    : Utils.nothing,
                itemBuilder: (_, i) => AdaptiveListTile(
                  leading: Icon(DocumentID.values.elementAt(i).icon),
                  title: AdaptiveText(
                    '${DocumentID.values.elementAt(i).name}',
                    textColor: s.documentID == DocumentID.values.elementAt(i)
                        ? Palette.accentColor
                        : Palette.text100,
                  ),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: s.documentID == DocumentID.values.elementAt(i)
                          ? Palette.accentColor
                          : Palette.neutralF5,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(
                      Utils.inputBorderRadius,
                    ),
                  ),
                  tileColor: s.documentID == DocumentID.values.elementAt(i)
                      ? Palette.accent20
                      : Palette.neutralF5,
                  horizontalTitleGap: 0.01.sw,
                  onTap: () => c
                      .read<VerificationCubit>()
                      .documentTypeChanged(DocumentID.values.elementAt(i)),
                ),
                itemCount: DocumentID.values.length,
              ),
            ),
            //
            VerticalSpace(height: 0.1.sw),
            //
            BlocSelector<VerificationCubit, VerificationState, bool>(
              selector: (s) => s.isLoading,
              builder: (c, isLaoding) {
                return AppButton(
                  text: 'Continue',
                  disabled: isLaoding,
                  onPressed: () => navigator.push(DocumentUploadRoute(
                    cubit: context.read<VerificationCubit>(),
                  )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
