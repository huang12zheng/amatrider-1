import 'dart:async';

import 'package:amatrider/app.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initializes Hive with a valid directory in your app files.
    await Hive.initFlutter();
    await Hive.openBox<String>(Const.kAccessTokenBoxKey);
  } catch (e, trace) {
    log.e('Error initializing Hive', e, trace);
  }

  // Initialize Hydrated storage
  final storage = await HydratedStorage.build(storageDirectory: await Utils.cacheDir);

  await HydratedBlocOverrides.runZoned(
    () => runZonedGuarded(
      () async {
        // Setup Environmental variables & Service provider
        await BuildEnvironment.init(flavor: BuildFlavor.dev);

        runApp(const ProviderScope(child: AmatRider()));
      },
      (error, stackTrace) => log.wtf(error.toString(), error, stackTrace),
    ),
    storage: storage,
  );
}
