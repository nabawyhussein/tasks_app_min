import 'package:flutter/cupertino.dart';

class AppSize {
  static Size _size(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static Size size(BuildContext context) {
    return _size(context);
  }
}
