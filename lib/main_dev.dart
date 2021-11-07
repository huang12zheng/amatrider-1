import 'package:amatrider/app.dart';
import 'package:amatrider/config/env.dart';
import 'package:amatrider/utils/utils.dart';
import 'package:device_preview/device_preview.dart';
import 'package:device_preview/plugins.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    // Initializes Hive with a valid directory in your app files.
    await Hive.initFlutter();
    await Hive.openBox<String>(Const.kAccessTokenBoxKey);
  } catch (e, trace) {
    log.e('Error initializing Hive', e, trace);
  }

  try {
    // Initialize Hydrated storage
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await Utils.cacheDir,
    );
  } catch (e, trace) {
    log.e('Error initializing HydratedStorage', e, trace);
  }

  // Setup Environmental variables & Service provider
  await BuildEnvironment.init(flavor: BuildFlavor.dev);

  await initializeDateFormatting();

  runApp(ProviderScope(
    child: DevicePreview(
      isToolbarVisible: true,
      plugins: [
        const ScreenshotPlugin(),
        const FileExplorerPlugin(),
      ],
      enabled: env.flavor.fold(
        prod: () => !kReleaseMode,
        dev: () => true,
      ),
      style: DevicePreviewStyle.light(
        position: DevicePreviewToolBarPosition.bottom,
        buttonsVisibility: const DevicePreviewButtonsVisibilityStyleData(
          rotate: false,
          darkMode: false,
          settings: true,
          accessibility: true,
        ),
      ),
      builder: (_) => const AmatRider(),
    ),
  ));
}
