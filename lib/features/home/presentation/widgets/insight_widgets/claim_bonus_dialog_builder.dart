part of insights_page.dart;

class _ClaimBonusDialogBuilder extends StatelessWidget {
  final InsightsCubit cubit;
  final AmountField<double?> cash;

  const _ClaimBonusDialogBuilder({
    Key? key,
    required this.cubit,
    required this.cash,
  }) : super(key: key);

  String mapIndexToTitle(int index) {
    switch (index) {
      case 0:
        return 'Account Name';
      case 1:
        return 'Account Number';
      case 2:
        return 'Bank Name';
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
      providers: [
        BlocProvider(create: (_) => getIt<AuthCubit>()..getBankAccount()),
        BlocProvider.value(value: cubit),
      ],
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ),
        child: AdaptiveAlertdialog(
          width: 0.75.w,
          title: 'Claim Bonus',
          body: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AdaptiveText.rich(
                TextSpan(children: [
                  const TextSpan(
                    text: 'Bonus of ',
                  ),
                  TextSpan(
                    text: '${cash.getOrEmpty}'.asCurrency().toUpperCase(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const TextSpan(
                    text: ' would be deposited into your account.',
                  ),
                ]),
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                letterSpacing: Utils.letterSpacing,
                textAlign: TextAlign.center,
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              ...List.generate(3, (i) {
                return BlocSelector<AuthCubit, AuthState, BankAccount>(
                  selector: (s) => s.bankAccount,
                  builder: (_, account) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormInputLabel(
                        text: mapIndexToTitle(i),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        textAlign: TextAlign.end,
                      ),
                      //
                      HorizontalSpace(width: 0.03.sw),
                      //
                      Expanded(
                        child: AdaptiveText(
                          mapIndexToValue(i, account),
                          fontSize: 18.sp,
                          maxLines: 1,
                          fontWeight: FontWeight.w400,
                          letterSpacing: Utils.letterSpacing,
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
          materialFirstButton: BlocSelector<InsightsCubit, InsightsState, bool>(
            selector: (s) => s.isLoading,
            builder: (c, isLoading) => AppButton(
              text: 'I have made the deposit',
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
              text: 'Cancel',
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
