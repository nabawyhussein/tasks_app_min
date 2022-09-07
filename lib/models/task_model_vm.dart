class TaskModel {
  String taskName;
  String taskStartTime;
  String taskEndTime;
  String taskDescription;
  String taskCategory;
  String taskDate;

  TaskModel(
      {required this.taskDate,
      required this.taskDescription,
      required this.taskEndTime,
      required this.taskName,
      required this.taskStartTime,
      required this.taskCategory});
}
