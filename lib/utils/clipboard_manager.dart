import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class ClipboardManager {
  static Future<bool> copy(String text, {String? msg}) async {
    await Clipboard.setData(ClipboardData(text: text));

    await Fluttertoast.showToast(
      msg: msg ?? 'Copied to clipboard!',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
    );

    return true;
  }
}
