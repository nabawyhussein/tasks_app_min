import 'dart:ui';

import 'package:flutter/material.dart';

import '../resources/app_size_res.dart';
import '../resources/color_manger.dart';

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget({
    Key? key,
    required this.txt,
    this.onPressed,
  }) : super(key: key);
  final String txt;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorManger.primary),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppSize.size(context).width * 0.03,
              ),
              // side: BorderSide(color: ColorManger.primary),
            ),
          )),
      onPressed: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: AppSize.size(context).width*0.6,
        height: AppSize.size(context).height * 0.065,
        child: Text(txt,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: AppSize.size(context).width * .055)),
      ),
    );
  }
}
