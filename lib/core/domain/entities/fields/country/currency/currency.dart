library currency.dart;

import 'package:amatrider/core/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
@immutable
class Currency with _$Currency {
  const Currency._();

  const factory Currency({
    UniqueId<String?>? id,
    String? name,
    @Default(CurrencyType.NGN) CurrencyType? type,
  }) = _Currency;
}
