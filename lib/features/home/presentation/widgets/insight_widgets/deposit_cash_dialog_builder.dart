part of insights_page.dart;

class _DepositCashDialogBuilder extends StatelessWidget {
  final InsightsCubit cubit;
  final AmountField<double?> cash;

  final List<_DepositBankDetails> details = [
    _DepositBankDetails(
      title: '${S.current.accountName}: ',
      value: 'AmatNow',
    ),
    _DepositBankDetails(
      title: '${S.current.accountNumber}: ',
      value: '0123456789',
      icon: Icons.copy_rounded,
      iconColor: Palette.accentColor,
    ),
    _DepositBankDetails(
      title: '${S.current.bankName}: ',
      value: 'First Bank',
    ),
  ];

  _DepositCashDialogBuilder({
    Key? key,
    required this.cubit,
    required this.cash,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ),
        child: AdaptiveAlertdialog(
          width: 0.75.w,
          title: '${tr.insightDepositCash}',
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Utils.platform_(
                material: AdaptiveText.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '${tr.insightDepositAlertContent(
                        '${cash.getOrEmpty}'.asCurrency(),
                      )}',
                    ),
                  ]),
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: Utils.letterSpacing,
                  textAlign: TextAlign.center,
                ),
                cupertino: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '${tr.insightDepositAlertContent(
                        '${cash.getOrEmpty}'.asCurrency(),
                      )}',
                    ),
                  ]),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    letterSpacing: Utils.letterSpacing,
                  ),
                ),
              )!,
              //
              VerticalSpace(height: 0.04.sw),
              //
              ...details.map(
                (e) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 2,
                      child: TextFormInputLabel(
                        text: e.title,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.end,
                        useDefaultText: Utils.platform_(
                          cupertino: true,
                          material: false,
                        )!,
                      ),
                    ),
                    //
                    HorizontalSpace(width: 0.03.sw),
                    //
                    Expanded(
                      flex: 3,
                      child: Utils.platform_(
                        material: AdaptiveText(
                          e.value,
                          fontSize: 18.sp,
                          maxLines: 1,
                          fontWeight: FontWeight.w400,
                          letterSpacing: Utils.letterSpacing,
                          textAlign: TextAlign.start,
                        ),
                        cupertino: Text(
                          e.value,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w400,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      )!,
                    ),
                    //
                    if (e.icon != null)
                      Flexible(
                        child: GestureDetector(
                          onTap: () => ClipboardManager.copy(e.value),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(Utils.buttonRadius),
                                color: Palette.accent20,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(
                                  e.icon,
                                  color: e.iconColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          isSecondDestructive: true,
          isSecondDefaultAction: true,
          cupertinoSecondButtonText: '${tr.cancel}',
          cupertinoFirstButton:
              BlocSelector<InsightsCubit, InsightsState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => WidgetVisibility(
              visible: !isLoading,
              replacement: Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: App.loadingSpinningLines,
                ),
              ),
              child: CupertinoDialogAction(
                isDefaultAction: true,
                isDestructiveAction: false,
                onPressed: () async {
                  await c.read<InsightsCubit>().depositCash(cash.getOrNull);
                  await navigator.pop();
                },
                child: Text('${tr.insightDepositAlertConfirmBtn}'),
              ),
            ),
          ),
          materialFirstButton: BlocSelector<InsightsCubit, InsightsState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AppButton(
              text: '${tr.insightDepositAlertConfirmBtn}',
              isLoading: isLoading,
              height: 0.055.h,
              cupertinoHeight: 0.028.sh,
              fontSize: 15.sp,
              onPressed: () async {
                await c.read<InsightsCubit>().depositCash(cash.getOrNull);
                await navigator.pop();
              },
            ),
          ),
          materialSecondButton:
              BlocSelector<InsightsCubit, InsightsState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AdaptiveButton(
              text: '${tr.cancel}',
              disabled: isLoading,
              height: 0.055.h,
              cupertinoHeight: 0.028.sh,
              fontSize: 15.sp,
              textColor: Palette.accentColor,
              splashColor: Colors.black12,
              backgroundColor: Palette.accent20,
              onPressed: navigator.pop,
            ),
          ),
        ),
      ),
    );
  }
}

class _DepositBankDetails {
  final String title;
  final String value;
  final IconData? icon;
  final Color? iconColor;

  const _DepositBankDetails({
    required this.title,
    required this.value,
    this.icon,
    this.iconColor,
  });
}
