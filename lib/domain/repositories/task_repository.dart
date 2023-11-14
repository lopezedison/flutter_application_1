import 'package:flutter_application_1/domain/entities/task_entity.dart';

abstract class TaskRepository {
  Future<List<TaskEntity>> getAllTasks();
  Future<void> saveTask(TaskEntity task);

  assignTaskToUser(String taskId, String userId) {}
}
