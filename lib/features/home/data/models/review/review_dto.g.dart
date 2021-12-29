// GENERATED CODE - DO NOT MODIFY BY HAND

part of review_dto.dart;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewDTO _$$_ReviewDTOFromJson(Map<String, dynamic> json) => _$_ReviewDTO(
      data: GenericListDTO<CustomerFeedbackDTO>.fromJson(
          json['data'] as Map<String, dynamic>,
          (value) =>
              CustomerFeedbackDTO.fromJson(value as Map<String, dynamic>)),
      totalReviews: json['totalReviews'] as int?,
      avgRating: (json['avgRating'] as num?)?.toDouble(),
      reviewGroups: (json['reviewGroups'] as List<dynamic>?)
              ?.map((e) => ReviewGroupDTO.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ReviewDTOToJson(_$_ReviewDTO instance) {
  final val = <String, dynamic>{
    'data': instance.data.toJson(
      (value) => value.toJson(),
    ),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('totalReviews', instance.totalReviews);
  writeNotNull('avgRating', instance.avgRating);
  val['reviewGroups'] = instance.reviewGroups.map((e) => e.toJson()).toList();
  return val;
}

_$_CustomerFeedbackDTO _$$_CustomerFeedbackDTOFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerFeedbackDTO(
      id: json['id'] as String?,
      rate: json['rate'] as int?,
      review: json['review'] as String?,
      userId: json['user_id'] as String?,
      orderId: json['order_id'] as String?,
      riderId: json['rider_id'] as String?,
      createdAt: const TimestampConverter().fromJson(json['created_at']),
      updatedAt: const TimestampConverter().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$_CustomerFeedbackDTOToJson(
    _$_CustomerFeedbackDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate', instance.rate);
  writeNotNull('review', instance.review);
  writeNotNull('user_id', instance.userId);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('rider_id', instance.riderId);
  writeNotNull(
      'created_at', const TimestampConverter().toJson(instance.createdAt));
  writeNotNull(
      'updated_at', const TimestampConverter().toJson(instance.updatedAt));
  return val;
}

_$_ReviewGroupDTO _$$_ReviewGroupDTOFromJson(Map<String, dynamic> json) =>
    _$_ReviewGroupDTO(
      group: json['group'] as int?,
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_ReviewGroupDTOToJson(_$_ReviewGroupDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('group', instance.group);
  writeNotNull('count', instance.count);
  return val;
}
