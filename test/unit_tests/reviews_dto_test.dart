// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:amatrider/features/home/data/models/review/review_dto.dart';
import 'package:amatrider/features/home/domain/entities/index.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that `ReviewDTO` model can parse json list response',
    () async {
      var result = jsonDecode(fixture('review/review.json'));

      final _res = ReviewDTO.fromJson(result as Map<String, dynamic>);

      final domain = _res.domain;

      final customerFeedbacks =
          _res.data.domain<CustomerFeedback>((e) => e.domain);

      Logger().i(domain.feedbacks);
      Logger().w(domain.reviewGroups);
    },
  );
}
