library store.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';

@freezed
@immutable
class Store extends BaseEntity with _$Store {
  const factory Store({
    required UniqueId<String?> id,
    required BasicTextField<String?> name,
    required BasicTextField<String?> speciality,
    required BasicTextField<String?> phone,
    @Default(false) bool isStoreOpen,
    @Default(false) bool allowWeekendOrders,
    required MediaField image,
    StoreLocation? location,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? deletedAt,
  }) = _Store;

  const Store._();

  UniqueId<String?> get uniqueKey => UniqueId<String>.v4();

  factory Store.blank() => Store(
        id: UniqueId.fromExternal(null),
        name: BasicTextField(null),
        speciality: BasicTextField(null),
        phone: BasicTextField(null),
        image: MediaField(null),
      );

  Store merge(Store? store) => copyWith(
        id: store?.id ?? id,
        name: store?.name.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => name) ?? name,
        speciality: store?.speciality.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => speciality) ?? speciality,
        phone: store?.phone.isNotNull((it) => it as BasicTextField<String?>, orElse: (_) => phone) ?? phone,
        image: store?.image.isNotNull((it) => it as MediaField, orElse: (_) => image) ?? image,
        allowWeekendOrders: store?.allowWeekendOrders ?? allowWeekendOrders,
        isStoreOpen: store?.isStoreOpen ?? isStoreOpen,
        location: store?.location ?? location,
        createdAt: store?.createdAt ?? createdAt,
        updatedAt: store?.updatedAt ?? updatedAt,
        deletedAt: store?.deletedAt ?? deletedAt,
      );
}
