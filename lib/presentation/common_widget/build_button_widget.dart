import 'dart:ui';

import 'package:flutter/material.dart';

import '../resources/app_size_res.dart';
import '../resources/color_manger.dart';

class BuildButtonWidget extends StatelessWidget {
  const BuildButtonWidget({
    Key? key,
    this.txt,
    this.onPressed,
  }) : super(key: key);
  final String? txt;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ColorManger.darkGrey,
        minimumSize: Size(AppSize.size(context).width * .65,
            AppSize.size(context).height * .056),
        //padding: EdgeInsets.symmetric(horizontal: AppSize.size(context).width * .25,vertical: 10),
      ),
      onPressed: onPressed,
      child: Text(txt!,
          style: TextStyle(
              color: ColorManger.error,
              fontSize: AppSize.size(context).width * .045)),
    );
  }
}
