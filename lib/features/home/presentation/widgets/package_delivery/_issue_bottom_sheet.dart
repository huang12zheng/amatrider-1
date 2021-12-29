part of package_delivery_accepted_screen.dart;

class _DeliveryIssueBottomsheet extends StatefulWidget {
  static const List<String> cancelReasons = [
    'Sender did not receive my calls',
    "I'm currently low on Fuel",
    'I had an accident in transit',
  ];

  final SendPackageCubit cubit;

  const _DeliveryIssueBottomsheet(this.cubit, {Key? key}) : super(key: key);

  @override
  State<_DeliveryIssueBottomsheet> createState() =>
      _DeliveryIssueBottomsheetState();
}

class _DeliveryIssueBottomsheetState extends State<_DeliveryIssueBottomsheet> {
  @override
  void dispose() {
    widget.cubit.resetIssueSheet();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.cubit,
      child: BlocListener<SendPackageCubit, SendPackageState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              duration: const Duration(seconds: 3),
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: s.pop ? navigator.popUntilRoot : null,
              ),
            ).render(c),
          ),
        ),
        child: SingleChildScrollView(
          clipBehavior: Clip.antiAlias,
          controller: ScrollController(),
          physics: Utils.physics,
          scrollDirection: Axis.vertical,
          padding: MediaQuery.of(context).viewInsets,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              VerticalSpace(height: 0.04.sw),
              //
              ClipRRect(
                borderRadius: BorderRadius.circular(Utils.cardRadius),
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.grey),
                  child: SizedBox(height: 0.015.sw, width: 0.2.sw),
                ),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Headline('Report a problem'),
                ),
              ),
              //
              VerticalSpace(height: 0.04.sw),
              //
              BlocBuilder<SendPackageCubit, SendPackageState>(
                builder: (c, s) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
                  child: Column(
                    children: [
                      ..._DeliveryIssueBottomsheet.cancelReasons.map(
                        (e) => Material(
                          type: MaterialType.transparency,
                          child: RadioListTile<String>(
                            dense: true,
                            value: e,
                            title: AdaptiveText(
                              '$e',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              letterSpacing: Utils.letterSpacing,
                            ),
                            groupValue: s.cancelReason.getOrEmpty,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) => c
                                .read<SendPackageCubit>()
                                .cancelReasonChanged(val, false),
                          ),
                        ),
                      ),
                      //
                      Material(
                        type: MaterialType.transparency,
                        child: RadioListTile<bool>(
                          dense: true,
                          value: true,
                          title: AdaptiveText(
                            'Other',
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            letterSpacing: Utils.letterSpacing,
                          ),
                          groupValue: s.isOtherReason,
                          contentPadding: EdgeInsets.zero,
                          onChanged: (val) => c
                              .read<SendPackageCubit>()
                              .cancelReasonChanged(null, true),
                        ),
                      ),
                      //
                      VerticalSpace(height: 0.04.sw),
                      //
                      if (s.isOtherReason)
                        ReactiveTextFormField<SendPackageCubit,
                            SendPackageState>(
                          hintText: (s) => 'Enter here..',
                          initial: (s) => s.cancelReason.getOrEmpty,
                          disabled: (s) => s.isLoading,
                          keyboardType: TextInputType.text,
                          capitalization: TextCapitalization.none,
                          field: (s) => s.cancelReason,
                          validate: (s) => s.validate,
                          response: (s) => s.status,
                          errorField: (s) => s.errors?.bankName,
                          onChanged: (cubit, it) =>
                              cubit.cancelReasonChanged(it, true),
                        ),
                      //
                      VerticalSpace(height: 0.08.sw),
                      //
                      AppButton(
                        text: 'Send Report',
                        disabled: !s.cancelReason.isValid,
                        isLoading: s.isLoading,
                        onPressed: c.read<SendPackageCubit>().cancelDelivery,
                      ),
                      //
                      VerticalSpace(height: App.sidePadding),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
