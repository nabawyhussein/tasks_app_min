import 'package:flutter/material.dart';
import 'package:taskmina/presentation/resources/color_manger.dart';

import '../resources/app_size_res.dart';
import 'build_text.dart';

class BuildTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String headerTxt;
  final double? width;

  const BuildTextField({
    Key? key,
    this.width,
    required this.headerTxt,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? AppSize.size(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildText(
            txt: headerTxt,
            fontSize: AppSize.size(context).width * 0.045,
            fontWeight: FontWeight.w700,
            color: ColorManger.primarySecondColor,
          ),
          TextFormField(
            controller: controller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManger.primarySecondColor, width: 2),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManger.primarySecondColor, width: 2),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: ColorManger.primarySecondColor, width: 2),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide:
                BorderSide(color: ColorManger.primarySecondColor, width: 2),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManger.error, width: 2),
              ),
              contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Correct Data";
              }

              return null;
            },
          ),
        ],
      ),
    );
  }
}
