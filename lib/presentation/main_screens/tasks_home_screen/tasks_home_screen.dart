import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskmina/presentation/common_widget/build_text.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/appbar_widget_builder.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/task_item_widget_builder.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/tasks_days_widget.dart';
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
            headerWidget(context),
            const BuildCurcvedContainer(),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return  TaskWidgetItemBuilder();
                  }),
            )

          ],
        ),
      ),
    );
  }

  Container headerWidget(BuildContext context) {
    return Container(
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
                        child: IconButton(icon: const Icon(Icons.add,color: Colors.white,
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

                  const TasksDaysListWidget(),
                ],
              ),
            ),
          );
  }
}
