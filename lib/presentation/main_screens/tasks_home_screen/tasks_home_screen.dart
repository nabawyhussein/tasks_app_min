import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:taskmina/bloc/user_tasks_cubit/tasks_operations_cubit.dart';
import 'package:taskmina/presentation/common_widget/build_text.dart';
import 'package:taskmina/presentation/main_screens/add_task_screen/add_task_screen.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/curved_container_widget_builder.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/task_item_widget_builder.dart';
import 'package:taskmina/presentation/main_screens/tasks_home_screen/widgets/tasks_days_widget.dart';
import 'package:taskmina/presentation/resources/app_size_res.dart';
import 'package:taskmina/presentation/resources/color_manger.dart';

import '../../resources/route_animatin.dart';

class TasksHomeScreen extends StatelessWidget {
  final todayName = DateFormat('EEEE').format(DateTime.now());
  final currentMonthName = DateFormat('MMM').format(DateTime.now());

  TasksHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManger.primary,
      body: SafeArea(
        child: Column(
          children: [
            headerWidget(context),
            const BuildCurcvedContainer(),
            BlocBuilder<TasksOperationsCubit, TasksOperationsState>(
              builder: (context, state) {
                TasksOperationsCubit tasksCubit =
                    BlocProvider.of<TasksOperationsCubit>(context);
                return Expanded(
                  child: tasksCubit.tasksList.isEmpty
                      ? Center(
                          child: BuildText(
                            txt: "No Tasks Yet",
                            color: Colors.white,
                            fontSize: AppSize.size(context).width * 0.06,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: tasksCubit.tasksList.length,
                          itemBuilder: (context, index) {
                            return TaskWidgetItemBuilder(
                              taskModel: tasksCubit.tasksList[index],
                            );
                          }),
                );
              },
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
        padding: EdgeInsets.all(AppSize.size(context).width * 0.05),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.notes_outlined,
                  color: Colors.black,
                  size: AppSize.size(context).height * 0.04,
                ),
                IconButton(
                  icon: Icon(
                    Icons.notifications,
                    color: ColorManger.primarySecondColor,
                    size: AppSize.size(context).height * 0.04,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: AppSize.size(context).height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildText(
                  txt: 'My Tasks',
                  fontSize: AppSize.size(context).width * 0.09,
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  height: AppSize.size(context).height * 0.06,
                  decoration: BoxDecoration(
                    color: ColorManger.primary,
                    borderRadius: BorderRadius.circular(
                      AppSize.size(context).width * 0.03,
                    ),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(createNavigateForStateless(CreateTaskScreen()));
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: AppSize.size(context).height * 0.015,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildText(
                  txt: 'Today',
                  fontSize: AppSize.size(context).width * 0.06,
                  fontWeight: FontWeight.w600,
                ),
                BuildText(
                  txt: todayName +
                      ", " +
                      DateTime.now().day.toString() +
                      " " +
                      currentMonthName,
                  fontSize: AppSize.size(context).width * 0.035,
                  color: ColorManger.primarySecondColor,
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            SizedBox(
              height: AppSize.size(context).height * 0.02,
            ),
            const TasksDaysListWidget(),
          ],
        ),
      ),
    );
  }
}
