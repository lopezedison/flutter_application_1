import 'package:flutter_application_1/domain/repositories/task_repository.dart';

class TaskAssignmentUseCase {
  final TaskRepository _taskRepository;

  TaskAssignmentUseCase(this._taskRepository);

  Future<void> assignTaskToUser(String taskId, String userId) async {
    await _taskRepository.assignTaskToUser(taskId, userId);
  }
}
