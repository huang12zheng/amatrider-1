part of package_delivery_accepted_screen.dart;

/// A stateless widget to render _AdditionalNotesDialog.
class _AdditionalNotesDialog extends StatelessWidget {
  final BasicTextField<String?>? altPhone;
  final BasicTextField<String?> notes;

  const _AdditionalNotesDialog(
    this.notes, {
    Key? key,
    this.altPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: App.sidePadding,
      ),
      child: AdaptiveAlertdialog(
        width: 0.75.w,
        title: 'Additional Notes',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AdaptiveText(
              '${notes.getOrEmpty}',
              softWrap: true,
              wrapWords: true,
              minFontSize: 14.0,
              textAlign: TextAlign.center,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              isDefault: Utils.platform_(cupertino: true),
            ),
            //
            if (altPhone != null && altPhone!.isValid)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormInputLabel(
                    text: 'Alt. Phone: ',
                    useDefaultText: Utils.platform_(
                      material: false,
                      cupertino: true,
                    )!,
                  ),
                  //
                  AdaptiveText(
                    '${altPhone?.getOrEmpty}',
                    softWrap: true,
                    wrapWords: true,
                    minFontSize: 14.0,
                    textAlign: TextAlign.center,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    isDefault: Utils.platform_(cupertino: true),
                  ),
                  //
                  HorizontalSpace(width: 0.04.sw),
                  //
                  Flexible(
                    child: GestureDetector(
                      onTap: () =>
                          ClipboardManager.copy('${altPhone?.getOrEmpty}'),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Utils.buttonRadius),
                          color: Palette.accent20,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Icon(
                            Icons.copy_rounded,
                            color: Palette.accentColor,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
        isSecondDestructive: false,
        isSecondDefaultAction: true,
        secondButtonText: 'Close',
        secondBgColor: Palette.accent20,
      ),
    );
  }
}
