import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskmina/bloc/user_tasks_cubit/tasks_operations_cubit.dart';
import 'package:taskmina/models/task_model_vm.dart';
import 'package:taskmina/presentation/common_widget/build_button_widget.dart';
import 'package:taskmina/presentation/common_widget/build_date_picker.dart';
import 'package:taskmina/presentation/common_widget/build_text_field.dart';
import 'package:taskmina/presentation/common_widget/build_toast.dart';

import '../../common_widget/build_text.dart';
import '../../common_widget/build_time_picker.dart';
import '../../resources/app_size_res.dart';
import '../../resources/color_manger.dart';

class CreateTaskScreen extends StatelessWidget {
   CreateTaskScreen({Key? key}) : super(key: key);
  TextEditingController taskNameController = TextEditingController();
  TextEditingController taskDescriptionController = TextEditingController();
  TextEditingController taskDateController = TextEditingController();
  TextEditingController taskTimeStartController = TextEditingController();
  TextEditingController taskTimeEndController = TextEditingController();
  final GlobalKey<FormState> createTaskFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back_ios_new,
          color: Colors.black,
        ), onPressed: () {
          Navigator.of(context).pop();
        },),
        actions: [IconButton(icon: const Icon(Icons.notes_outlined,
          color: Colors.black,
        ), onPressed: () {

        },)],
      ),
      body:Form(
        //final FormState? form = formKeyPublish.currentState;
        key: createTaskFormKey,
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(AppSize.size(context).width*0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildText(
                        txt: 'Create New Tasks',
                        fontSize: AppSize.size(context).width*0.08,
                        fontWeight: FontWeight.bold,
                      ),
                      Icon(Icons.event_note_rounded,
                        color: ColorManger.primarySecondColor,
                        size: AppSize.size(context).width*0.1,

                      )
                    ],
                  ),
                  BuildTextField(controller: taskNameController,headerTxt: "Task Name",),
                  SizedBox(height: AppSize.size(context).height*0.03,),
                  BuildDatePicker(textController: taskDateController,headerTxt: "Date",
                  width: AppSize.size(context).width*0.45,
                  ),
                  SizedBox(height: AppSize.size(context).height*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimePickerBuilder(headerTxt: 'Start', controller:taskTimeStartController,
                        width: AppSize.size(context).width*0.35,

                      ),
                      TimePickerBuilder(headerTxt: 'End', controller:taskTimeEndController,
                        width: AppSize.size(context).width*0.35,

                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.size(context).height*0.03,),
                  BuildTextField(controller: taskDescriptionController,
                    headerTxt: "Description",),
                  BuildButtonWidget(txt: 'Add Task',
                  onPressed: (){
                    final FormState? form = createTaskFormKey.currentState;
                    if(form!.validate()==true){
                      if(taskTimeEndController.text.isEmpty){
                        createToast("Enter Valid End Time");
                      }
                      else if(taskTimeStartController.text.isEmpty){
                        createToast("Enter Valid Start Time");
                      }
                      else{
                        TasksOperationsCubit addTask = BlocProvider.of<TasksOperationsCubit>(context);

                        TaskModel newTaskVm =TaskModel(
                            taskDate: taskDateController.text,
                            taskDescription: taskDescriptionController.text,
                            taskEndTime: taskTimeEndController.text,
                            taskName: taskNameController.text,
                            taskStartTime: taskTimeStartController.text,
                            taskCategory: "");
                       addTask.addTask(newTaskVm);
                      }
                    }
                  },
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
