import 'dart:async';

import 'package:amatrider/app.dart';
import 'package:amatrider/core/data/index.dart';
import 'package:amatrider/core/domain/facades/index.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
    () async => await runZonedGuarded<Future<void>>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();

        // Initialize awesome notifications
        await AwesomeNotifications().initialize(
          'resource://drawable/res_notification_app_icon',
          MessagingFacade.channels,
        );

        // Setup Environmental variables & Service provider
        await BuildEnvironment.init(flavor: BuildFlavor.dev);

        FirebaseMessaging.onBackgroundMessage(InAppMessaging.firebaseMessagingBackgroundHandler);

        runApp(const ProviderScope(child: AmatRider()));
      },
      (error, trace) {
        log.e(error.toString(), error, trace);
        App.report(exception: error, stack: trace);
      },
    ),
    storage: storage,
  );
}
