import 'package:flutter/material.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';

import '../resources/assets_manger.dart';

class BuildLogoWidget extends StatelessWidget {
  const BuildLogoWidget({Key? key, this.img = AppImages.appLogo})
      : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      img,
      height: AppSize.size(context).height*0.3,
      width: AppSize.size(context).width*0.9,
    );
  }
}
