part of insights_page.dart;

class _DepositCashDialogBuilder extends StatelessWidget {
  final InsightsCubit cubit;
  final AmountField<double?> cash;

  List<_DepositBankDetails> details(BankAccount? account) => [
        _DepositBankDetails(
          title: '${S.current.accountNumber}: ',
          value: '${account?.accountNumber.getOrEmpty}',
          icon: Icons.copy_rounded,
          iconColor: Palette.accentColor,
        ),
        _DepositBankDetails(
          title: '${S.current.bankName}: ',
          value: '${account?.bank.getOrEmpty}',
        ),
      ];

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
        child: WillPopScope(
          onWillPop: () {
            cubit.cancelDeposit();
            return Future.value(true);
          },
          child: BlocListener<InsightsCubit, InsightsState>(
            listenWhen: (p, c) => p.depositConfirmed != c.depositConfirmed,
            listener: (c, s) {
              if (s.depositConfirmed) navigator.popUntilRoot();
            },
            child: AdaptiveAlertdialog(
              width: 0.75.w,
              title: '${tr.insightDepositCash}',
              body: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AdaptiveText.rich(
                      TextSpan(children: [
                        TextSpan(
                          // text: '${tr.insightDepositAlertContent(
                          //   '${cash.getOrEmpty}'.asCurrency(),
                          // )}',
                          text: '${cubit.state.account?.transferNote.getOrEmpty}',
                        ),
                      ]),
                      fontSize: 18.sp,
                      isDefault: Utils.platform_(cupertino: true),
                      fontWeight: FontWeight.w400,
                      letterSpacing: Utils.letterSpacing,
                      textAlign: TextAlign.center,
                    ),
                    //
                    VerticalSpace(height: 0.04.sw),
                    //
                    ...details(cubit.state.account).map(
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
                            child: AdaptiveText(
                              e.value,
                              fontSize: 18.sp,
                              maxLines: 1,
                              fontWeight: FontWeight.w400,
                              letterSpacing: Utils.letterSpacing,
                              textAlign: TextAlign.start,
                              isDefault: Utils.platform_(cupertino: true),
                            ),
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
                                      borderRadius: BorderRadius.circular(Utils.buttonRadius),
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
                )
              ],
              isSecondDestructive: true,
              isSecondDefaultAction: true,
              cupertinoSecondButtonText: '${tr.cancel}',
              // cupertinoFirstButton: BlocConsumer<InsightsCubit, InsightsState>(
              //   listener: (c, s) {
              //     if (s.depositConfirmed) navigator.popUntilRoot();
              //   },
              //   builder: (c, s) => AnimatedVisibility(
              //     visible: !s.depositCashLoading,
              //     replacement: Center(
              //       child: Padding(
              //         padding: const EdgeInsets.all(5.0),
              //         child: App.loadingSpinningLines,
              //       ),
              //     ),
              //     child: CupertinoDialogAction(
              //       isDefaultAction: true,
              //       isDestructiveAction: false,
              //       onPressed: c.read<InsightsCubit>().depositEcho,
              //       child: Text('${tr.insightDepositAlertConfirmBtn}'),
              //     ),
              //   ),
              // ),
              // materialFirstButton: BlocConsumer<InsightsCubit, InsightsState>(

              //   builder: (c, s) => AnimatedVisibility(
              //     visible: !s.depositCashLoading,
              //     replacement: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: FutureBuilder<bool>(
              //         future: (() async {
              //           await Future.delayed(const Duration(seconds: 3));
              //           return true;
              //         })(),
              //         builder: (_, snapshot) {
              //           if (!snapshot.hasData) return App.loadingSpinningLines;

              //           return AdaptiveText(
              //             'Please wait while we confirm your deposit...',
              //             fontSize: 16.sp,
              //             fontWeight: FontWeight.w500,
              //             letterSpacing: Utils.letterSpacing,
              //             textAlign: TextAlign.center,
              //           );
              //         },
              //       ),
              //     ),
              //     child: AppButton(
              //       text: '${tr.insightDepositAlertConfirmBtn}',
              //       height: 0.055.h,
              //       cupertinoHeight: 0.028.sh,
              //       fontSize: 15.sp,
              //       onPressed: () {},
              //     ),
              //   ),
              // ),
              materialSecondButton: BlocSelector<InsightsCubit, InsightsState, bool>(
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
