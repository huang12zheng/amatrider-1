library promotions_screen.dart;

import 'package:amatrider/core/presentation/index.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:amatrider/features/home/presentation/managers/index.dart';
import 'package:amatrider/manager/locator/locator.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart' show right;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

/// A stateless widget to render PromotionsScreen.
class PromotionsScreen extends StatefulWidget with AutoRouteWrapper {
  const PromotionsScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PromotionCubit>(),
      child: BlocListener<PromotionCubit, PromotionState>(
        listenWhen: (p, c) =>
            p.status.getOrElse(() => null) != c.status.getOrElse(() => null) ||
            (c.status.getOrElse(() => null) != null &&
                (c.status.getOrElse(() => null)!.response.maybeMap(
                      error: (f) => f.fold(orElse: () => false),
                      orElse: () => false,
                    ))),
        listener: (c, s) => s.status.fold(
          () => null,
          (th) => th?.response.map(
            info: (i) => PopupDialog.info(message: i.message).render(c),
            error: (f) => PopupDialog.error(message: f.message).render(c),
            success: (s) => PopupDialog.success(message: s.message).render(c),
          ),
        ),
        child: this,
      ),
    );
  }

  @override
  State<PromotionsScreen> createState() => _PromotionsScreenState();
}

class _PromotionsScreenState extends State<PromotionsScreen> {
  late PromotionCubit _cubit;

  @override
  void initState() {
    _cubit = context.read<PromotionCubit>();
    super.initState();
  }

  Future<void> onLoadMore(DragToRefreshState refresh, {bool nextPage = true, int? perPage}) async {
    if (!_cubit.state.isLoading) {
      _cubit.getPromotions(nextPage: nextPage, perPage: perPage, onDone: () => refresh.controller.loadComplete());
    } else
      refresh.controller.loadComplete();

    Future.delayed(const Duration(seconds: 30), () {
      if (refresh.controller.isLoading) refresh.controller.loadComplete();
    });
  }

  Future<void> onRefresh(DragToRefreshState refresh) async {
    _cubit.getPromotions(onDone: () => refresh.controller.refreshCompleted());
  }

  @override
  Widget build(BuildContext context) {
    return AppSliverScrollView.scaffold(
      title: 'Promotions',
      isPaginated: true,
      enablePullUp: true,
      initialRefresh: true,
      onRefresh: (drag) => onRefresh(drag),
      onLoading: (drag) => onLoadMore(drag),
      slivers: [
        BlocBuilder<PromotionCubit, PromotionState>(
          builder: (c, s) => SliverToBoxAdapter(
            child: AnimatedVisibility(
              visible: (!s.isLoading && s.promotions.isEmpty()),
              child: EmptyStateWidget(
                useScaffold: false,
                asset: right(AppAssets.promoDiscount),
                height: 0.8.h,
                width: 1.w,
                title: 'No promotions yet.',
                description: 'Check back later.',
              ),
            ),
          ),
        ),
        //
        BlocSelector<PromotionCubit, PromotionState, KtList<Promotion>>(
          selector: (s) => s.promotions,
          builder: (c, list) => SliverFixedExtentList(
            itemExtent: 0.38.h,
            delegate: SliverChildBuilderDelegate(
              (_, i) {
                final item = list.get(i);

                return Column(
                  children: [
                    Expanded(
                      child: Material(
                        color: App.resolveColor(Palette.cardColorLight, dark: Palette.cardColorDark),
                        child: Padding(
                          padding: EdgeInsets.all(App.sidePadding),
                          // padding: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 6,
                                child: AnimatedVisibility(
                                  visible: item.url.getOrNull != null || item.streamUrl.getOrNull != null,
                                  replacement: ImageBox.network(
                                    photo: item.store.image.getOrNull,
                                    fit: BoxFit.cover,
                                    height: 0.4.h,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    expandsFullscreen: true,
                                    applyConstraintToReplacement: true,
                                    replacement: Utils.nothing,
                                  ),
                                  child: item.mime.type.maybeWhen(
                                    image: () => ImageBox.network(
                                      photo: item.url.getOrEmpty,
                                      fit: BoxFit.cover,
                                      height: 0.37.h,
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      expandsFullscreen: true,
                                      applyConstraintToReplacement: true,
                                      replacement: Utils.nothing,
                                    ),
                                    video: () =>
                                        App.platform.material(VideoBox.network(
                                          video: item.streamUrl.getOrEmpty,
                                          aspectRatio: 16 / 9,
                                          applyConstraintToReplacement: true,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(8),
                                            topRight: Radius.circular(8),
                                          ),
                                          showControls: false,
                                        )) ??
                                        Utils.nothing,
                                    orElse: () => Utils.nothing,
                                  ),
                                ),
                              ),
                              //
                              0.02.verticalh,
                              //
                              if (item.description.getOrNull != null)
                                Flexible(
                                  flex: 3,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: App.resolveColor(Palette.neutralF9, dark: Palette.neutralMoonDark),
                                      borderRadius: 5.br,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 0.02.w, vertical: 0.004.h),
                                      child: AdaptiveText(
                                        '${item.description.getOrEmpty}',
                                        maxLines: 3,
                                        fontSize: 16.sp,
                                        minFontSize: 14,
                                        maxFontSize: 16,
                                        textColorDark: Palette.text100,
                                        fontWeight: FontWeight.w400,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (i != list.size - 1) 0.03.verticalh,
                  ],
                );
              },
              childCount: list.size,
            ),
          ),
        ),
      ],
    );
  }
}
