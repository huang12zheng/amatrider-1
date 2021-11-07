part of insights_page.dart;

class _DepositCashDialogBuilder extends StatelessWidget {
  final InsightsCubit cubit;
  final AmountField<double?> cash;

  const _DepositCashDialogBuilder({
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
              AdaptiveText.rich(
                TextSpan(children: [
                  TextSpan(
                    text:
                        '${tr.insightDepositAlertContent('${cash.getOrEmpty}'.asCurrency())}',
                  ),
                  // TextSpan(
                  //   text: ' ${cash.getOrEmpty} '.asCurrency(),
                  //   style: const TextStyle(
                  //     fontWeight: FontWeight.w600,
                  //   ),
                  // ),
                  // TextSpan(
                  //   text: '${tr.insightDepositAlertContent2}',
                  // ),
                ]),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: Utils.letterSpacing,
                textAlign: TextAlign.center,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              ..._DepositBankDetails.details.map(
                (e) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormInputLabel(
                      text: e.title,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.end,
                    ),
                    //
                    HorizontalSpace(width: 0.03.sw),
                    //
                    Expanded(
                      child: AdaptiveText(
                        e.value,
                        fontSize: 18.sp,
                        maxLines: 1,
                        fontWeight: FontWeight.w400,
                        letterSpacing: Utils.letterSpacing,
                        textAlign: TextAlign.start,
                      ),
                    ),
                    //
                    if (e.icon != null)
                      GestureDetector(
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
                  ],
                ),
              ),
            ],
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

  static const List<_DepositBankDetails> details = [
    _DepositBankDetails(
      title: 'Account Name: ',
      value: 'AmatNow',
    ),
    _DepositBankDetails(
      title: 'Account Number: ',
      value: '0123456789',
      icon: Icons.copy_rounded,
      iconColor: Palette.accentColor,
    ),
    _DepositBankDetails(
      title: 'Bank Name: ',
      value: 'First Bank',
    ),
  ];
}
