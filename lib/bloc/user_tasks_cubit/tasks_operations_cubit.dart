import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:taskmina/models/task_model_vm.dart';

part 'tasks_operations_state.dart';

class TasksOperationsCubit extends Cubit<TasksOperationsState> {
  TasksOperationsCubit() : super(TasksOperationsInitial());
  List<TaskModel> tasksList = [];

  addTask(TaskModel taskModel) {
    emit(CreateTaskLoading());
    try {
      tasksList.add(taskModel);
      emit(CreateTaskSuccess());
    } catch (e) {
      emit(CreateTaskFail());
    }
  }
}
