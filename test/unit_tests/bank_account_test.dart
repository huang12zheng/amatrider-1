// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:amatrider/features/home/data/data.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';

import '../fixtures/fixture_reader.dart';

void main() {
  test(
    'test that `BankAccountDTO` model can parse json list response',
    () async {
      var result = jsonDecode(fixture('bank_account/bank_account.json'));

      final _res = GenericObjectDTO.fromJson(
        result as Map<String, dynamic>,
        (json) => BankAccountDTO.fromJson(json as Map<String, dynamic>),
      );

      final domain = _res.domain((e) => e?.domain);

      Logger().i(domain?.accountName);
      Logger().w(domain);
    },
  );
}
