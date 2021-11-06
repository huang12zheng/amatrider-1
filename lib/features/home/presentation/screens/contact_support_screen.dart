library contact_support_screen.dart;

import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/manager/settings/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render ContactSupportScreen.
class ContactSupportScreen extends StatelessWidget with AutoRouteWrapper {
  const ContactSupportScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GlobalAppPreferenceCubit>(),
      child: BlocListener<GlobalAppPreferenceCubit, GlobalPreferenceState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.foldCode(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(
              duration: const Duration(seconds: 3),
              message: s.message,
              listener: (_) => _?.fold(
                dismissed: () {
                  if (s.pop && navigator.current.name != DashboardRoute.name)
                    navigator.popUntil((route) => route.isFirst);
                },
              ),
            ).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void _pickImage(BuildContext ctx, [bool isLoading = false]) async {
    if (!isLoading)
      await App.showAdaptiveBottomSheet(
        ctx,
        topRadius: Radius.zero,
        builder: (_) => DocumentPickerSheet(
          pickers: [
            DocumentPicker(
              name: 'Camera',
              asset: Utils.foldTheme(
                light: () => AppAssets.cameraColored,
                dark: () => AppAssets.cameraOutlined,
              ),
              onPressed: () => ctx
                  .read<GlobalAppPreferenceCubit>()
                  .pickImage(ImageSource.camera),
            ),
            DocumentPicker(
              name: 'Gallery',
              asset: Utils.foldTheme(
                light: () => AppAssets.galleryColored,
                dark: () => AppAssets.galleryOutlined,
              ),
              onPressed: () => ctx
                  .read<GlobalAppPreferenceCubit>()
                  .pickImage(ImageSource.gallery),
            ),
          ],
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(
        implyLeading: true,
        cupertinoImplyLeading: true,
        title: 'Contact Support',
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        physics: Utils.physics,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppAssets.contactSupport,
            //
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: App.sidePadding,
              ).copyWith(top: 0.02.sw),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headline(
                    'Feedback Type',
                    fontSize: 16.sp,
                    textColor: Palette.neutralLabel,
                    textColorDark: Palette.neutralLabelDark,
                    fontWeight: FontWeight.w700,
                  ),
                  //
                  VerticalSpace(height: 0.01.sw),
                  //
                  BlocBuilder<GlobalAppPreferenceCubit, GlobalPreferenceState>(
                    buildWhen: (p, c) => p.feedbackType != c.feedbackType,
                    builder: (c, s) => Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio(
                              value: FeedbackType.suggestion,
                              groupValue: s.feedbackType,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: c
                                  .read<GlobalAppPreferenceCubit>()
                                  .feedbackTypeChanged,
                            ),
                            //
                            GestureDetector(
                              onTap: () => c
                                  .read<GlobalAppPreferenceCubit>()
                                  .feedbackTypeChanged(FeedbackType.suggestion),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3.0),
                                child: AdaptiveText(
                                  'Suggestion',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                        //
                        HorizontalSpace(width: 0.04.sw),
                        //
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Radio(
                              value: FeedbackType.inquiry,
                              groupValue: s.feedbackType,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                              onChanged: c
                                  .read<GlobalAppPreferenceCubit>()
                                  .feedbackTypeChanged,
                            ),
                            //
                            GestureDetector(
                              onTap: () => c
                                  .read<GlobalAppPreferenceCubit>()
                                  .feedbackTypeChanged(FeedbackType.inquiry),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3.0),
                                child: AdaptiveText(
                                  'Inquiry',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  //
                  ReactiveTextFormField<GlobalAppPreferenceCubit,
                      GlobalPreferenceState>(
                    minLines: 5,
                    hintText: (s) => 'Message',
                    disabled: (s) => s.isLoading,
                    keyboardType: TextInputType.multiline,
                    action: TextInputAction.newline,
                    capitalization: TextCapitalization.none,
                    focus: GlobalPreferenceState.supportMsgFocus,
                    field: (s) => s.supportMessage,
                    validate: (s) => s.validate,
                    response: (s) => s.status,
                    errorField: (s) => s.errors?.supportMessage,
                    onChanged: (cubit, it) => cubit.supportMessageChanged(it),
                  ),
                  //
                  VerticalSpace(height: 0.03.sw),
                  //
                  const TextFormInputLabel(text: 'Add Images (optional)'),
                  //
                  BlocBuilder<GlobalAppPreferenceCubit, GlobalPreferenceState>(
                    builder: (c, s) => Visibility(
                      visible: s.supportImages.isEmpty(),
                      child: Row(
                        children: [
                          Material(
                            color: Palette.neutralF4,
                            elevation: 0.0,
                            type: MaterialType.button,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(Utils.buttonRadius),
                            ),
                            child: InkWell(
                              borderRadius:
                                  BorderRadius.circular(Utils.buttonRadius),
                              onTap: () async => _pickImage(c, s.isLoading),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 17, vertical: 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.image,
                                        color: Palette.text40),
                                    //
                                    HorizontalSpace(width: 0.02.sw),
                                    //
                                    AdaptiveText(
                                      'Select Image',
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: Utils.letterSpacing,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  BlocBuilder<GlobalAppPreferenceCubit, GlobalPreferenceState>(
                    builder: (c, s) => Visibility(
                      visible: !s.supportImages.isEmpty(),
                      child: SizedBox(
                        height: 0.3.sw,
                        child: ListView(
                          shrinkWrap: true,
                          physics: Utils.physics,
                          scrollDirection: Axis.horizontal,
                          controller: ScrollController(),
                          children: [
                            ...s.supportImages
                                .mapIndexedNotNull(
                                  (i, image) => Padding(
                                    padding: EdgeInsets.only(right: 0.03.sw),
                                    child: ImageUploadWidget<
                                        GlobalAppPreferenceCubit,
                                        GlobalPreferenceState>(
                                      state: s,
                                      isLoading: (s) => s.isLoading,
                                      width: (s) => 0.3.sw,
                                      selected: (s) => image,
                                      localFit: BoxFit.fill,
                                      onCameraClicked: (cubit, source) =>
                                          cubit.pickImage(source, i),
                                      onGalleryClicked: (cubit, source) =>
                                          cubit.pickImage(source, i),
                                      onClosePressed: (cubit) =>
                                          cubit.removeImage(i),
                                    ),
                                  ),
                                )
                                .asList(),
                            //
                            Center(
                              child: SizedBox(
                                height: 0.15.sw,
                                width: 0.15.sw,
                                child: Material(
                                  elevation: 0,
                                  type: MaterialType.transparency,
                                  borderRadius: BorderRadius.circular(100),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    onTap: () async =>
                                        _pickImage(c, s.isLoading),
                                    child: Padding(
                                      padding: EdgeInsets.all(0.03.sw),
                                      child: const Icon(Icons.add,
                                          size: 30, color: Palette.accentColor),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  //
                  VerticalSpace(height: 0.05.sw),
                  //
                  BlocBuilder<GlobalAppPreferenceCubit, GlobalPreferenceState>(
                    buildWhen: (p, c) => p.isLoading != c.isLoading,
                    builder: (c, s) => AppButton(
                      text: 'Send Message',
                      isLoading: s.isLoading,
                      onPressed:
                          c.read<GlobalAppPreferenceCubit>().contactSupport,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
