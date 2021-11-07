library availablility_widget.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class AvailablilityWidget extends StatelessWidget {
  const AvailablilityWidget({Key? key}) : super(key: key);

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
                    duration: const Duration(seconds: 1), message: s.message)
                .render(c),
          ),
        ),
        child: BlocSelector<AuthWatcherCubit, AuthWatcherState,
            RiderAvailability?>(
          selector: (s) => s.rider?.availability,
          builder: (c, availability) => Row(
            children: [
              Visibility(
                visible: c.select(
                  (AuthCubit it) => it.state.isLoading,
                ),
                child: const Center(
                  child: CircularProgressBar.adaptive(
                    height: 20,
                    width: 20,
                    strokeWidth: 1.5,
                  ),
                ),
              ),
              //
              HorizontalSpace(width: 0.02.sw),
              //
              Headline('${tr.status}: ', fontSize: 17.sp),
              //
              AdaptiveText(
                availability == RiderAvailability.available
                    ? '${tr.active}'
                    : '${tr.inActive}',
                fontSize: 17.sp,
                textColor: Palette.text40,
                fontWeight: FontWeight.w400,
              ),
              //
              PlatformSwitch(
                value: availability == RiderAvailability.available,
                material: (_, __) => MaterialSwitchData(
                  inactiveThumbColor: Colors.grey,
                  inactiveTrackColor: Colors.grey.shade300,
                ),
                onChanged: (value) {
                  if (value) {
                    c
                        .read<AuthCubit>()
                        .toggleAvailability(RiderAvailability.available);
                  } else {
                    c
                        .read<AuthCubit>()
                        .toggleAvailability(RiderAvailability.unavailable);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
