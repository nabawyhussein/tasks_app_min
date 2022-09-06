import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taskmina/presentation/common_widget/build_text.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';
import 'package:taskmina/presentation/resources/color_manger.dart';

class BuildCurcvedContainer extends StatelessWidget {
  const BuildCurcvedContainer({Key? key,this.txt,this.notificationIcon = false,this.color}) : super(key: key);
  final String? txt;
  final bool? notificationIcon;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.size(context).height * .03 ,
      decoration: const BoxDecoration(
        color: ColorManger.primary,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(AppSize.size(context).width * .075),
          ),

        ),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(AppSize.size(context).width * .075),
              ),

            ),
        ),
      ),
    );
  }
}