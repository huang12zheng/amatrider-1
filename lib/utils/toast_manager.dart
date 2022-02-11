library toast_manager.dart;

import 'package:fluttertoast/fluttertoast.dart';

mixin ToastManager {
  static Future<bool?> short(String msg) => Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);

  static Future<bool?> long(String msg) => Fluttertoast.showToast(msg: msg, toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.BOTTOM);

  static Future<bool?> cancel() => Fluttertoast.cancel();
}
