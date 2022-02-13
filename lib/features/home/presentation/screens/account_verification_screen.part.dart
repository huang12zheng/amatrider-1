part of account_verification_screen.dart;

/// A stateless widget to render DocumentUploadScreen.
class DocumentUploadScreen extends StatefulWidget with AutoRouteWrapper {
  final VerificationCubit cubit;

  const DocumentUploadScreen({required this.cubit});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(value: cubit, child: this);
  }

  @override
  State<DocumentUploadScreen> createState() => _DocumentUploadScreenState();
}

class _DocumentUploadScreenState extends State<DocumentUploadScreen> {
  DateTime _timestampPressed = DateTime.now();

  Future<bool> maybePop() async {
    final now = DateTime.now();
    final difference = now.difference(_timestampPressed);
    final _showWarn = difference >= Utils.willPopTimeout;

    setState(() => _timestampPressed = DateTime.now());

    if (_showWarn) {
      await ToastManager.short('Tap again to exit');
      return Future.value(false);
    } else {
      await ToastManager.cancel();
      return Future.value(true);
    }
  }

  void showPicker(BuildContext context, IdSection section) {
    App.showAdaptiveBottomSheet(
      context,
      radius: Radius.zero,
      builder: (_) => DocumentPickerSheet(
        pickers: [
          DocumentPicker(
            name: 'Camera',
            asset: Utils.foldTheme(
              light: () => AppAssets.cameraColored,
              dark: () => AppAssets.cameraOutlined,
            ),
            onPressed: () => context.read<VerificationCubit>().pickCamera(section),
          ),
          DocumentPicker(
            name: 'File Explorer',
            asset: Utils.foldTheme(
              light: () => AppAssets.folderColored,
              dark: () => AppAssets.folderOutlined,
            ),
            onPressed: () => context.read<VerificationCubit>().pickFileExplorer(section),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: App.sidePadding,
        ).copyWith(top: 0.02.sw),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SafeArea(
              left: false,
              right: false,
              bottom: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocSelector<VerificationCubit, VerificationState, DocumentID?>(
                    selector: (s) => s.documentID,
                    builder: (c, type) => AdaptiveText(
                      '${type?.name}',
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.04.sw),
                  //
                  AdaptiveText(
                    'File size must be between 10KB and 5MB in .jpg / .png / .pdf / .doc format',
                    fontSize: 17.sp,
                  ),
                  //
                  VerticalSpace(height: 0.04.sw),
                  //
                  DottedBorder(
                    dashPattern: [6, 3, 2, 3],
                    borderType: BorderType.RRect,
                    padding: const EdgeInsets.all(5.0),
                    radius: const Radius.circular(Utils.buttonRadius),
                    color: Utils.computeLuminance(Theme.of(context).canvasColor),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: App.shortest * 0.5, maxWidth: double.infinity),
                      child: BlocBuilder<VerificationCubit, VerificationState>(
                        builder: (c, s) => Material(
                          child: AdaptiveInkWell(
                            onTap: () {
                              if (!s.isLoading) showPicker(c, IdSection.front);
                            },
                            child: Material(
                              color: App.resolveColor(Palette.inputBgColor, dark: Palette.secondaryColor.shade400),
                              child: Center(
                                child: s.frontMimeType == null
                                    ? Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Utils.platform_(material: Icons.photo_camera, cupertino: CupertinoIcons.camera),
                                            color: Colors.grey,
                                            size: 30.0,
                                          ),
                                          //
                                          AdaptiveText('Upload Front Page', fontSize: 16.sp),
                                        ],
                                      )
                                    : s.frontMimeType?.fold(
                                        img: ImageBox.file(photo: s.frontID!.path, fit: BoxFit.cover),
                                        doc: (a) => Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            a == DocumentMimeType.pdf ? AppAssets.pdf : AppAssets.docx,
                                            const VerticalSpace(height: 25),
                                            AdaptiveText(
                                              '${s.frontName.getOrEmpty}',
                                              fontSize: 16.sp,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.08.sw),
                  //
                  //
                  DottedBorder(
                    dashPattern: [6, 3, 2, 3],
                    borderType: BorderType.RRect,
                    padding: const EdgeInsets.all(5.0),
                    radius: const Radius.circular(Utils.buttonRadius),
                    color: Utils.computeLuminance(Theme.of(context).canvasColor),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: App.shortest * 0.5, maxWidth: double.infinity),
                      child: BlocBuilder<VerificationCubit, VerificationState>(
                        builder: (c, s) => Material(
                          child: AdaptiveInkWell(
                            onTap: () {
                              if (!s.isLoading) showPicker(c, IdSection.back);
                            },
                            child: Material(
                              color: App.resolveColor(Palette.inputBgColor, dark: Palette.secondaryColor.shade400),
                              child: Center(
                                child: s.backMimeType == null
                                    ? Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Utils.platform_(material: Icons.photo_camera, cupertino: CupertinoIcons.camera),
                                            color: Colors.grey,
                                            size: 30.0,
                                          ),
                                          //
                                          AdaptiveText('Upload Back Page', fontSize: 16.sp),
                                        ],
                                      )
                                    : s.backMimeType?.fold(
                                        img: ImageBox.file(photo: s.backID!.path, fit: BoxFit.cover),
                                        doc: (a) => Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            a == DocumentMimeType.pdf ? AppAssets.pdf : AppAssets.docx,
                                            const VerticalSpace(height: 25),
                                            AdaptiveText(
                                              '${s.backName.getOrEmpty}',
                                              fontSize: 16.sp,
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //
            VerticalSpace(height: 0.1.sw),
            //
            Align(
              alignment: Alignment.bottomCenter,
              child: BlocSelector<VerificationCubit, VerificationState, bool>(
                selector: (s) => s.isLoading,
                builder: (c, isLoading) => Column(
                  children: [
                    AppButton(
                      text: 'Submit',
                      isLoading: isLoading,
                      onPressed: context.read<VerificationCubit>().verifyDocuments,
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
    );
  }
}
