library history_page.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/features/home/presentation/widgets/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:dartz/dartz.dart' hide State;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kt_dart/collection.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/// A stateless widget to render HistoryPage.
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  late HistoryCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = getIt<HistoryCubit>()..echo();
  }

  void onRefresh(BuildContext c, RefreshController controller) async {
    await BlocProvider.of<HistoryCubit>(c).getHistory();
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _cubit,
      child: BlocListener<HistoryCubit, HistoryState>(
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
            success: (s) => PopupDialog.error(message: s.message).render(c),
          ),
        ),
        child: AdaptiveScaffold(
          adaptiveToolbar: AdaptiveToolbar(
            tooltip: '${tr.menu}',
            showCustomLeading: true,
            leadingAction: () {},
            leadingIcon: Consumer(
              builder: (_, ref, child) => PlatformIconButton(
                materialIcon: const Icon(Icons.menu),
                cupertinoIcon: const Icon(CupertinoIcons.bars),
                onPressed: ref.read(scaffoldController.notifier).open,
              ),
            ),
            actions: [const AvailablilityWidget()],
          ),
          body: SafeArea(
            child: Builder(
              builder: (c) => DragToRefresh(
                initialRefresh: true,
                onRefresh: (controller) => onRefresh(c, controller),
                child: BlocBuilder<HistoryCubit, HistoryState>(
                  builder: (c, s) => WidgetVisibility(
                    visible: !DragToRefresh.of(c).refreshController.isLoading &&
                        !s.isLoading &&
                        s.histories.isEmpty(),
                    replacement: CustomScrollView(
                      shrinkWrap: true,
                      physics: Utils.physics,
                      scrollDirection: Axis.vertical,
                      controller: ScrollController(),
                      keyboardDismissBehavior:
                          ScrollViewKeyboardDismissBehavior.onDrag,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.sidePadding,
                          ).copyWith(top: 0.01.sw),
                          sliver: SliverToBoxAdapter(
                            child: AdaptiveText(
                              '${tr.history}',
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
                        SliverList(
                          delegate: SliverChildListDelegate.fixed([
                            ...s.historyCollection
                                .map((entry) => GroupedLayoutCard(
                                      dateTime: entry.key,
                                      count: entry.value.size,
                                      layout: (i) => DeliveryHistoryCard(
                                        history: entry.value[i],
                                        initialExpanded:
                                            entry.value.firstOrNull()?.id ==
                                                entry.value.getOrNull(i)?.id,
                                      ),
                                    ))
                                .iter,
                          ]),
                        ),
                      ],
                    ),
                    child: StageOwnerWidget(
                      asset: right(AppAssets.noHistory(
                        const Size.fromHeight(80),
                      )),
                      useScaffold: false,
                      title: 'No Delivery History Yet',
                      description: 'Past delivery history would appear here.',
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
