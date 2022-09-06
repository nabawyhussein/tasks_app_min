part of 'tasks_operations_cubit.dart';

@immutable
abstract class TasksOperationsState {}

class TasksOperationsInitial extends TasksOperationsState {}

class CreateTaskLoading extends TasksOperationsState {}

class CreateTaskSuccess extends TasksOperationsState {}

class CreateTaskFail extends TasksOperationsState {}
