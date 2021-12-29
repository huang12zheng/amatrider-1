library delete_account_alertdialog.dart;

import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// A stateless widget to render DeleteAccountAlertdialog.
class DeleteAccountAlertdialog extends StatelessWidget {
  const DeleteAccountAlertdialog({Key? key}) : super(key: key);

  double get _width => 0.75.sw;

  String get _content => 'If you’d like to reduce email notifications, you can disable them instead.';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuthCubit>(),
      child: BlocListener<AuthCubit, AuthState>(
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
              listener: (status) => status?.fold(
                dismissed: () => navigator.pushAndPopUntil(const GetStartedRoute(), predicate: (_) => false),
              ),
              message: s.message,
            ).render(c),
          ),
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
          ),
          child: PlatformAlertDialog(
            widgetKey: key,
            material: (_, __) => MaterialAlertDialogData(
              scrollable: false,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Utils.buttonRadius),
              ),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              titlePadding: EdgeInsets.symmetric(
                horizontal: 0.04.sw,
              ).copyWith(top: 0.04.sw),
              insetPadding: EdgeInsets.zero,
              contentPadding: EdgeInsets.symmetric(
                horizontal: App.sidePadding,
                vertical: App.sidePadding,
              ),
            ),
            cupertino: (_, __) => CupertinoAlertDialogData(
              scrollController: ScrollController(),
              actions: [
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (c, s) => WidgetVisibility(
                    visible: !s.isLoading,
                    replacement: Center(child: App.loadingSpinningLines),
                    child: CupertinoDialogAction(
                      isDefaultAction: false,
                      isDestructiveAction: true,
                      onPressed: c.read<AuthCubit>().deleteAccount,
                      child: const Text('Delete Account'),
                    ),
                  ),
                ),
                //
                CupertinoDialogAction(
                  isDefaultAction: true,
                  isDestructiveAction: false,
                  onPressed: navigator.pop,
                  child: const Text('Cancel'),
                ),
              ],
            ),
            title: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(AppAssets.closeAccount),
                //
                VerticalSpace(height: 0.05.sw),
                //
                SizedBox(
                  width: _width,
                  height: 0.03.sh,
                  child: Material(
                    type: MaterialType.transparency,
                    child: Align(
                      alignment: Alignment.center,
                      child: AdaptiveText(
                        "We're sad to see you go",
                        softWrap: true,
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            content: SingleChildScrollView(
              clipBehavior: Clip.antiAlias,
              physics: Utils.physics,
              scrollDirection: Axis.vertical,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: SizedBox(
                width: _width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Utils.platform_(
                        material: AdaptiveText(
                          '$_content',
                          softWrap: true,
                          wrapWords: true,
                          minFontSize: 14,
                          textAlign: TextAlign.center,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        cupertino: Text(
                          '$_content',
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    //
                    ...Utils.platform_(
                      material: [
                        VerticalSpace(height: 0.05.sw),
                        //
                        BlocBuilder<AuthCubit, AuthState>(
                          builder: (c, s) => AppButton(
                            text: 'Delete Account',
                            disabled: s.isLoading,
                            isLoading: s.isLoading,
                            onPressed: c.read<AuthCubit>().deleteAccount,
                          ),
                        ),
                        //
                        VerticalSpace(height: 0.03.sw),
                        //
                        AdaptiveButton(
                          text: 'Cancel',
                          fontWeight: FontWeight.w600,
                          splashColor: Colors.black12,
                          backgroundColor: Colors.transparent,
                          onPressed: navigator.pop,
                        )
                      ],
                      cupertino: [Utils.nothing],
                    )!,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
