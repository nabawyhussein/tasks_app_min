import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:taskmina/presentation/resources/color_manger.dart';

createToast(String message) {
  Fluttertoast.showToast(
    msg: message.toString(),
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.CENTER,
    backgroundColor: ColorManger.primary,
    textColor: Colors.white,
    fontSize: 16.0,
  );
}
