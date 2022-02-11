part of package_delivery_accepted_screen.dart;

/// A stateless widget to render _AdditionalNotesDialog.
class _AdditionalNotesDialog extends StatelessWidget {
  final Phone? altPhone;
  final BasicTextField<String?> notes;

  const _AdditionalNotesDialog(
    this.notes, {
    Key? key,
    this.altPhone,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: App.sidePadding),
      child: AdaptiveAlertdialog(
        width: 0.75.w,
        title: 'Additional Notes',
        body: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: AdaptiveText(
                  '${notes.getOrEmpty}',
                  softWrap: true,
                  wrapWords: true,
                  minFontSize: 14.0,
                  textAlign: TextAlign.center,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  isDefault: Utils.platform_(cupertino: true),
                ),
              ),
              //
              0.01.verticalh,
              //
              if (altPhone != null && altPhone!.isValid)
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 3,
                        child: TextFormInputLabel(
                          text: 'Alt. Phone: ',
                          minFontSize: 11,
                          maxFontSize: Utils.platform_(material: 18, cupertino: 15)!,
                          fontSize: Utils.platform_(material: null, cupertino: 13.sp),
                          fontWeight: Utils.platform_(material: FontWeight.w600),
                          useDefaultText: Utils.platform_(cupertino: true),
                        ),
                      ),
                      //
                      Flexible(
                        flex: 7,
                        child: GestureDetector(
                          onTap: () => ClipboardManager.copy('${altPhone?.getOrEmpty}'),
                          child: AdaptiveText(
                            '${altPhone?.getOrEmpty}',
                            softWrap: true,
                            wrapWords: true,
                            minFontSize: 11,
                            textAlign: TextAlign.center,
                            fontSize: 15.sp,
                            maxFontSize: 16,
                            fontWeight: FontWeight.w400,
                            isDefault: Utils.platform_(cupertino: true),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                      //
                      HorizontalSpace(width: 0.04.sw),
                      //
                      Flexible(
                        child: GestureDetector(
                          onTap: () => ClipboardManager.copy('${altPhone?.getOrEmpty}'),
                          child: Material(
                            borderRadius: BorderRadius.circular(Utils.buttonRadius),
                            child: const Icon(
                              Icons.content_copy,
                              color: Palette.accentColor,
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
        isSecondDestructive: false,
        isSecondDefaultAction: true,
        secondButtonText: 'Close',
        secondBgColor: Palette.accent20,
      ),
    );
  }
}
