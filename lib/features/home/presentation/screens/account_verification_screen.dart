library account_verification_screen.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
            success: (res) => navigator.pushAndPopUntil(
              SuccessRoute(
                title: 'Document Submitted Successfully',
                description: 'Your submission is under review.',
                lottieJson: AppAssets.checkAnimation,
                onInitState: () async {
                  await Future.delayed(
                    const Duration(seconds: 3),
                    () {
                      if (navigator.current.name != DashboardRoute.name) navigator.pop();
                    },
                  );
                },
              ),
              predicate: (_) => navigator.current.name == DashboardRoute.name,
            ),
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
        padding: EdgeInsets.symmetric(horizontal: App.sidePadding).copyWith(top: 0.02.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: AdaptiveText(
                    'Account Verification',
                    fontSize: 24.sp,
                    maxLines: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                //
                const Flexible(child: VerificationStatusChip()),
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
                color: Utils.foldTheme(
                  light: () => Palette.pastelYellow,
                  dark: () => Palette.pastelYellow2,
                ),
                borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
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
                          textColorDark: Colors.black87,
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
                borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
              ),
              child: AdaptiveListTile(
                dense: true,
                material: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                trailing: Icon(Icons.arrow_drop_down,
                    color: Utils.platform_(
                      cupertino: App.resolveColor(Colors.black87, dark: Colors.white70),
                    )),
                tileColor: App.resolveColor(Palette.neutralF5, dark: Palette.secondaryColor.shade400),
                title: BlocBuilder<VerificationCubit, VerificationState>(
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
                    pickerBuilder: (_, country) => Row(
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
                        HorizontalSpace(width: 0.03.sw),
                        //
                        Flexible(
                          child: AdaptiveText(
                            '${country?.toCountryStringOnly()}',
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
              builder: (c, s) => IgnorePointer(
                ignoring: c.read<AuthWatcherCubit>().state.rider?.verificationStatus == ProfileVerificationStatus.verified,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, i) => i != DocumentID.values.length ? VerticalSpace(height: 0.04.sw) : Utils.nothing,
                  itemBuilder: (_, i) => AdaptiveListTile(
                    material: true,
                    leading: Icon(DocumentID.values.elementAt(i).icon,
                        color: Utils.platform_(
                          cupertino: s.documentID == DocumentID.values.elementAt(i)
                              ? Palette.accentColor
                              : CupertinoColors.systemGrey.resolveFrom(context),
                        )),
                    title: AdaptiveText(
                      '${DocumentID.values.elementAt(i).name}',
                      textColor: s.documentID == DocumentID.values.elementAt(i)
                          ? Palette.accentColor
                          : App.resolveColor(
                              Palette.text100,
                              dark: Utils.platform_(cupertino: Colors.white70),
                            ),
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: s.documentID == DocumentID.values.elementAt(i) ? Palette.accentColor : Palette.neutralF5,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(Utils.inputBorderRadius),
                    ),
                    tileColor: s.documentID == DocumentID.values.elementAt(i)
                        ? Palette.accent20
                        : App.resolveColor(
                            Palette.neutralF5,
                            dark: Palette.secondaryColor.shade400,
                          ),
                    horizontalTitleGap: 0.01.sw,
                    onTap: () => c.read<VerificationCubit>().documentTypeChanged(DocumentID.values.elementAt(i)),
                  ),
                  itemCount: DocumentID.values.length,
                ),
              ),
            ),
            //
            VerticalSpace(height: 0.03.h),
            //
            BlocBuilder<VerificationCubit, VerificationState>(
              builder: (c, s) => BlocSelector<AuthWatcherCubit, AuthWatcherState, ProfileVerificationStatus?>(
                selector: (s) => s.rider?.verificationStatus,
                builder: (c, status) => status == ProfileVerificationStatus.in_review || status == ProfileVerificationStatus.verified
                    ? Utils.nothing
                    : AppButton(
                        text: 'Continue',
                        disabled: s.isLoading || s.documentID == null || s.countries.isEmpty(),
                        onPressed: () => navigator.push(DocumentUploadRoute(
                          cubit: context.read<VerificationCubit>(),
                        )),
                      ),
              ),
            ),
            //
            VerticalSpace(height: 0.05.h),
          ],
        ),
      ),
    );
  }
}
