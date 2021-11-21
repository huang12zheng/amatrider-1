part of insights_page.dart;

class _ClaimBonusDialogBuilder extends StatelessWidget {
  final InsightsCubit cubit;
  final AmountField<double?> cash;
  final BankAccount account;

  const _ClaimBonusDialogBuilder({
    Key? key,
    required this.cubit,
    required this.cash,
    required this.account,
  }) : super(key: key);

  String mapIndexToTitle(int index) {
    switch (index) {
      case 0:
        return '${S.current.accountName}';
      case 1:
        return '${S.current.accountNumber}';
      case 2:
        return '${S.current.bankName}';
      default:
        return '';
    }
  }

  String mapIndexToValue(int index, BankAccount account) {
    switch (index) {
      case 0:
        return '${account.accountName.getOrNull}';
      case 1:
        return '${account.accountNumber.getOrNull}';
      case 2:
        return '${account.bank.getOrNull}';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: cubit)],
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ),
        child: AdaptiveAlertdialog(
          width: 0.75.w,
          title: '${tr.insightClaimBonus}',
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AdaptiveText.rich(
                TextSpan(children: [
                  TextSpan(
                    text: '${tr.insightBonusAlertContent(
                      '${cash.getOrEmpty}'.asCurrency(),
                    )}',
                  ),
                ]),
                isDefault: Utils.platform_(cupertino: true),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: Utils.letterSpacing,
                textAlign: TextAlign.center,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              ...List.generate(3, (i) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormInputLabel(
                      text: mapIndexToTitle(i),
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                      textAlign: TextAlign.end,
                      useDefaultText: Utils.platform_(
                        cupertino: true,
                        material: false,
                      )!,
                    ),
                    //
                    HorizontalSpace(width: 0.03.sw),
                    //
                    Expanded(
                      child: AdaptiveText(
                        mapIndexToValue(i, account),
                        fontSize: 18.sp,
                        maxLines: 1,
                        isDefault: Utils.platform_(cupertino: true),
                        fontWeight: FontWeight.w400,
                        letterSpacing: Utils.letterSpacing,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                );
              }).toList(),
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
                  await c.read<InsightsCubit>().claimBonus();
                  await navigator.pop();
                },
                child: Text('${tr.insightBonusAlertConfirmBtn}'),
              ),
            ),
          ),
          materialFirstButton: BlocSelector<InsightsCubit, InsightsState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AppButton(
              text: '${tr.insightBonusAlertConfirmBtn}',
              isLoading: isLoading,
              height: 0.055.h,
              cupertinoHeight: 0.028.sh,
              fontSize: 15.sp,
              onPressed: () async {
                await c.read<InsightsCubit>().claimBonus();
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
