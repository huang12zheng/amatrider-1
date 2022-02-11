library notification_screen.dart;

import 'package:amatrider/core/data/websocket_response_type.dart';
import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show right;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render NotificationScreen.
class NotificationScreen extends StatefulWidget with AutoRouteWrapper {
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
                      error: (f) => f.fold(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (it) => it?.response.map(
            info: (i) => PopupDialog.error(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  void onRefresh(BuildContext c, [DragToRefreshState? controller]) async {
    if (c.read<NotificationCubit>().state.inAppNotifications.isEmpty()) await BlocProvider.of<NotificationCubit>(c).inAppNotifications();
    controller?.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      isPaginated: true,
      enablePullDown: true,
      useSafeArea: true,
      title: '${tr.notifications}',
      onRefresh: (controller) => onRefresh(context, controller),
      slivers: [
        BlocBuilder<NotificationCubit, NotificationState>(
          builder: (c, s) {
            if (!s.isLoading && s.inAppNotificationCollection.isEmpty()) return const SliverToBoxAdapter(child: Utils.nothing);
            //
            return SliverList(
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
            );
          },
        ),
        //
        BlocBuilder<NotificationCubit, NotificationState>(
          builder: (c, s) => SliverToBoxAdapter(
            child: AnimatedVisibility(
              visible: !s.isLoading && s.inAppNotificationCollection.isEmpty(),
              child: EmptyStateWidget(
                asset: right(AppAssets.balloons),
                useScaffold: false,
                height: 0.7.h,
                title: 'You’re all caught up!',
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _mapType(InAppNotification? notification) {
    if (notification == null) return Utils.nothing;

    return notification.type.when(
          packageDelivered: () {
            final meta = notification.meta.value as NotificationMeta<SendPackage?>;
            return SendPackageNotificationCard(package: meta.value!);
          },
          orElse: () => Utils.nothing,
        ) ??
        Utils.nothing;
  }
}
