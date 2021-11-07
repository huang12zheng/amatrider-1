library verification_status_chip.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/auth/presentation/managers/managers.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// A stateless widget to render VerificationStatusChip.
class VerificationStatusChip extends StatelessWidget {
  const VerificationStatusChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AuthWatcherCubit, AuthWatcherState,
        ProfileVerificationStatus?>(
      selector: (s) => s.rider?.verificationStatus,
      builder: (c, status) =>
          status?.when(
            verified: () => CustomChipWidget(
              '${tr.verified}',
              backgroundColor: Palette.pastelGreen,
              textColor: Palette.accentDarkGreen,
            ),
            inReview: () => CustomChipWidget(
              '${tr.inReview}',
              backgroundColor: Palette.neutralE2,
              textColor: Palette.inputTextDark,
            ),
            failed: () => CustomChipWidget(
              '${tr.failed}',
              backgroundColor: Palette.accent20,
              textColor: Palette.accentColor,
            ),
            unverified: () => CustomChipWidget(
              '${tr.unverified}',
              backgroundColor: Palette.pastelYellow2,
              textColor: Palette.yellow,
            ),
          ) ??
          Utils.nothing,
    );
  }
}
