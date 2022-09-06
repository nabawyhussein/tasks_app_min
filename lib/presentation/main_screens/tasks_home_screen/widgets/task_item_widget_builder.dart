import 'package:flutter/material.dart';

import '../../../common_widget/build_text.dart';
import '../../../resources/app_size_res.dart';
import '../../../resources/color_manger.dart';

class TaskWidgetItemBuilder extends StatelessWidget {
  const TaskWidgetItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: AppSize.size(context).width*0.9,
          height: AppSize.size(context).height*0.2,
          padding: EdgeInsets.all(AppSize.size(context).width*0.05),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSize.size(context).width * .035 )
          ),
          child: Row(
            children: [
              CircleAvatar(
                child: Icon(Icons.phone,color: Colors.white,
                  size: AppSize.size(context).width*0.12,
                ),
                radius: AppSize.size(context).width*0.09,
                backgroundColor: ColorManger.primarySecondColor,
              ),
              SizedBox(width: AppSize.size(context).width*0.06,),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BuildText(
                      txt: 'Team Meating',
                      fontSize: AppSize.size(context).width*0.06,
                      fontWeight: FontWeight.w600,),
                    Expanded(
                      child: BuildText(
                        txt: "desc mainAxis Alignment: MainAxis Alignme nt.center mainAxisAli gnment: MainAxis Alignme nt.center",
                        fontSize: AppSize.size(context).width*0.035,
                        color: ColorManger.primarySecondColor,
                        fontWeight: FontWeight.w600,),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
        Transform.translate(
          offset:  Offset(AppSize.size(context).width*0.33, -20),
          child:Container(
            width: AppSize.size(context).width*0.28,
            height: AppSize.size(context).height*0.05,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(AppSize.size(context).width * .035),
                topLeft: Radius.circular(AppSize.size(context).width * .035),
              ),
            ),
            child: BuildText(
              txt: '10 :00 AM',
              fontSize: AppSize.size(context).width*0.04,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),

      ],
    );
  }
}
