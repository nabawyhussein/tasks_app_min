import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskmina/presentation/common_widget/build_text.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/appbar_widget_builder.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';
import 'package:taskmina/presentation/resources/color_manger.dart';
import 'package:intl/date_symbol_data_local.dart';
class TasksHomeScreen extends StatelessWidget {
  final todayName = DateFormat('EEEE').format(DateTime.now());
  final currentMonthName = DateFormat('MMM').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding:  EdgeInsets.all(AppSize.size(context).width*0.05),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildText(
                          txt: 'My Tasks',
                          fontSize: AppSize.size(context).width*0.09,
                          fontWeight: FontWeight.bold,
                        ),
                        Container(
                          height: AppSize.size(context).height*0.06,
                          decoration: BoxDecoration(
                            color: ColorManger.primary,
                            borderRadius: BorderRadius.circular(
                              AppSize.size(context).width*0.03,
                            ),
                          ),
                          child: IconButton(icon: Icon(Icons.add,color: Colors.white,
                              ), onPressed: () {  },),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildText(
                          txt: 'Today',
                          fontSize: AppSize.size(context).width*0.06,
                          fontWeight: FontWeight.w600,),
                        BuildText(
                          txt: todayName+", "+DateTime.now().day.toString()+" "+currentMonthName,
                          fontSize: AppSize.size(context).width*0.035,
                          color: ColorManger.primarySecondColor,
                          fontWeight: FontWeight.w600,),

                      ],
                    ),

                    Container(
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
                    ),
                  ],
                ),
              ),
            ),
            BuildCurcvedContainer(),
            Container(
              color: Colors.white,
              child: Container(
                  width: AppSize.size(context).width,
                  height: AppSize.size(context).height*0.05,
                  decoration: BoxDecoration(
                      color: ColorManger.primary,
                      border: Border.all(width: 0, color: ColorManger.primary),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(AppSize.size(context).width * .1),
                      )),

              ),
            ),
            Column(
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
            )
          ],
        ),
      ),
    );
  }
}
