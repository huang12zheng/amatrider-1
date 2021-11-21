library notification_screen.dart;

import 'package:amatrider/core/data/websocket_response_type.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget to render NotificationScreen.
class NotificationScreen extends StatelessWidget with AutoRouteWrapper {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<NotificationCubit>(context)..echo(),
      child: BlocListener<NotificationCubit, NotificationState>(
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
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  void onRefresh(BuildContext c, RefreshController controller) async {
    if (c.read<NotificationCubit>().state.inAppNotifications.isEmpty())
      await BlocProvider.of<NotificationCubit>(c).inAppNotifications();
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: DragToRefresh(
        initialRefresh: true,
        onRefresh: (controller) => onRefresh(context, controller),
        child: BlocBuilder<NotificationCubit, NotificationState>(
          builder: (c, s) => WidgetVisibility(
            visible: !s.isLoading && s.inAppNotifications.isEmpty(),
            replacement: CustomScrollView(
              shrinkWrap: true,
              physics: Utils.physics,
              scrollDirection: Axis.vertical,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: App.sidePadding,
                  ).copyWith(top: 0.01.sw, bottom: 0.02.sw),
                  sliver: SliverToBoxAdapter(
                    child: AdaptiveText(
                      '${tr.notifications}',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 25.0.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: Utils.letterSpacing,
                      ),
                    ),
                  ),
                ),
                //
                if (!s.isLoading && s.inAppNotificationCollection.isNotEmpty())
                  SliverList(
                    delegate: SliverChildListDelegate.fixed([
                      ...s.inAppNotificationCollection
                          .map((entry) => GroupedLayoutCard(
                                dateTime: entry.key,
                                count: entry.value.size,
                                verticalGap: 0.04.sw,
                                layout: (i) => _mapType(
                                  entry.value.getOrNull(i),
                                ),
                              ))
                          .iter,
                    ]),
                  ),
              ],
            ),
            child: StageOwnerWidget(
              asset: right(AppAssets.balloons),
              title: 'You’re all caught up!',
            ),
          ),
        ),
      ),
    );
  }

  Widget _mapType(InAppNotification? notification) {
    if (notification == null) return Utils.nothing;

    return notification.type.when(
          packageDelivered: () {
            final meta =
                notification.meta.value as NotificationMeta<SendPackage?>;
            return SendPackageNotificationCard(package: meta.value!);
          },
          orElse: () => Utils.nothing,
        ) ??
        Utils.nothing;
  }
}
