import 'package:flutter/material.dart';
import '../../../common_widget/build_text.dart';
import '../../../resources/app_size_res.dart';
import '../../../resources/color_manger.dart';

class TasksDaysListWidget extends StatelessWidget {
  const TasksDaysListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.size(context).height*0.07,
      child: ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount: 9,
          itemBuilder: (context, index) {
            return  Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: AppSize.size(context).width*0.02),
              padding: EdgeInsets.symmetric(horizontal: AppSize.size(context).width*0.04,
                  vertical: AppSize.size(context).width*0.01
              ),
              decoration: BoxDecoration(
                  color:index ==0 ? ColorManger.primary:Colors.white,
                  borderRadius: BorderRadius.circular(
                    AppSize.size(context).width*0.04,
                  ),
                  border: Border.all(
                      color: ColorManger.primary
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BuildText(
                    txt: "0"+ (index+1).toString(),
                    fontSize: AppSize.size(context).width*0.05,
                    fontWeight: FontWeight.bold,
                    color: index !=0 ? Colors.black :Colors.white,
                  ),
                  BuildText(
                    txt: "w",
                    fontSize: AppSize.size(context).width*0.04,
                    fontWeight: FontWeight.w600,
                    color: index !=0 ? ColorManger.primarySecondColor :Colors.white,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
