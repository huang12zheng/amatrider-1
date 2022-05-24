library app_update.dart;

import 'package:amatrider/utils/utils.dart';
import 'package:in_app_update/in_app_update.dart';

class AppUpdate {
  static Future<void> checkForUpdates([bool? flexible]) async {
    if (App.platform.isAndroid && env.flavor == BuildFlavor.prod) {
      final _flexible = flexible ?? true;
      final info = await InAppUpdate.checkForUpdate();

      if (info.updateAvailability == UpdateAvailability.updateAvailable) {
        if (!_flexible) {
          await InAppUpdate.performImmediateUpdate();
        } else if (_flexible) {
          try {
            final flexible = await InAppUpdate.startFlexibleUpdate();
            if (flexible == AppUpdateResult.success) await InAppUpdate.completeFlexibleUpdate();
          } catch (e, tr) {
            await App.report(exception: e, stack: tr);
          }
        }
      }
    }
  }
}
