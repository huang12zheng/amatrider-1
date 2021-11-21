// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:amatrider/features/home/data/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that `InsightsDTO` model can parse json list response',
    () async {
      var result = jsonDecode(fixture('insights/insight.json'));

      final _res = InsightDTO.fromJson(result as Map<String, dynamic>);

      final domain = _res.insightData?.insightData?.domain;

      Logger().w(domain);
    },
  );
}
