part of account_verification_screen.dart;

/// A stateless widget to render DocumentUploadScreen.
class DocumentUploadScreen extends StatelessWidget with AutoRouteWrapper {
  final VerificationCubit cubit;

  const DocumentUploadScreen({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: this,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocSelector<VerificationCubit, VerificationState, DocumentID?>(
                  selector: (s) => s.documentID,
                  builder: (c, type) => AdaptiveText(
                    '${type?.name}',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                    ),
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
                  color: Utils.computeLuminance(
                      Theme.of(context).scaffoldBackgroundColor),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: App.shortest * 0.5,
                      maxWidth: double.infinity,
                    ),
                    child: BlocBuilder<VerificationCubit, VerificationState>(
                      builder: (c, s) => Material(
                        child: InkWell(
                          onTap: () async {
                            if (!s.isLoading)
                              await App.showAdaptiveBottomSheet(
                                context,
                                builder: (_) => DocumentPickerSheet(
                                  pickers: [
                                    DocumentPicker(
                                      name: 'Camera',
                                      asset: Utils.foldTheme(
                                        light: () => AppAssets.cameraColored,
                                        dark: () => AppAssets.cameraOutlined,
                                      ),
                                      onPressed: () => c
                                          .read<VerificationCubit>()
                                          .pickCamera(IdSection.front),
                                    ),
                                    DocumentPicker(
                                      name: 'File Explorer',
                                      asset: Utils.foldTheme(
                                        light: () => AppAssets.folderColored,
                                        dark: () => AppAssets.folderOutlined,
                                      ),
                                      onPressed: () => c
                                          .read<VerificationCubit>()
                                          .pickFileExplorer(IdSection.front),
                                    ),
                                  ],
                                ),
                              );
                          },
                          child: Container(
                            color: Utils.foldTheme(
                              light: () => Palette.inputBgColor,
                              dark: () => Palette.secondaryColor.shade400,
                            ),
                            child: Center(
                              child: s.frontMimeType == null
                                  ? Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Theme.of(context).platform.fold(
                                                material: () =>
                                                    Icons.photo_camera,
                                                cupertino: () =>
                                                    CupertinoIcons.camera,
                                              ),
                                          color: Colors.grey,
                                          size: 30.0,
                                        ),
                                        //
                                        AdaptiveText(
                                          'Upload Front Page',
                                          fontSize: 16.sp,
                                        ),
                                      ],
                                    )
                                  : s.frontMimeType?.fold(
                                      img: Image.file(
                                        s.frontID!,
                                        fit: BoxFit.cover,
                                      ),
                                      doc: (a) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          a == DocumentMimeType.pdf
                                              ? AppAssets.pdf
                                              : AppAssets.docx,
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
                  color: Utils.computeLuminance(
                      Theme.of(context).scaffoldBackgroundColor),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: App.shortest * 0.5,
                      maxWidth: double.infinity,
                    ),
                    child: BlocBuilder<VerificationCubit, VerificationState>(
                      builder: (c, s) => Material(
                        child: InkWell(
                          onTap: () async {
                            if (!s.isLoading)
                              await App.showAdaptiveBottomSheet(
                                context,
                                builder: (_) => DocumentPickerSheet(
                                  pickers: [
                                    DocumentPicker(
                                      name: 'Camera',
                                      asset: Utils.foldTheme(
                                        light: () => AppAssets.cameraColored,
                                        dark: () => AppAssets.cameraOutlined,
                                      ),
                                      onPressed: () => c
                                          .read<VerificationCubit>()
                                          .pickCamera(IdSection.back),
                                    ),
                                    DocumentPicker(
                                      name: 'File Explorer',
                                      asset: Utils.foldTheme(
                                        light: () => AppAssets.folderColored,
                                        dark: () => AppAssets.folderOutlined,
                                      ),
                                      onPressed: () => c
                                          .read<VerificationCubit>()
                                          .pickFileExplorer(IdSection.back),
                                    ),
                                  ],
                                ),
                              );
                          },
                          child: Container(
                            color: Utils.foldTheme(
                              light: () => Palette.inputBgColor,
                              dark: () => Palette.secondaryColor.shade400,
                            ),
                            child: Center(
                              child: s.backMimeType == null
                                  ? Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Theme.of(context).platform.fold(
                                                material: () =>
                                                    Icons.photo_camera,
                                                cupertino: () =>
                                                    CupertinoIcons.camera,
                                              ),
                                          color: Colors.grey,
                                          size: 30.0,
                                        ),
                                        //
                                        AdaptiveText(
                                          'Upload Back Page',
                                          fontSize: 16.sp,
                                        ),
                                      ],
                                    )
                                  : s.backMimeType?.fold(
                                      img: Image.file(
                                        s.backID!,
                                        fit: BoxFit.cover,
                                      ),
                                      doc: (a) => Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          a == DocumentMimeType.pdf
                                              ? AppAssets.pdf
                                              : AppAssets.docx,
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
                      onPressed:
                          context.read<VerificationCubit>().verifyDocuments,
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
