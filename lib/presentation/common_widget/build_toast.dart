import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CreateToast {
  static void createToast(String message) {
    Fluttertoast.showToast(
      msg: message.toString(),
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.green.withOpacity(.8),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
