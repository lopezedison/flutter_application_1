import 'package:flutter_application_1/domain/entities/task_entity.dart';
import 'package:flutter_application_1/domain/repositories/task_repository.dart';

class TaskRepositoryImpl implements TaskRepository {
  @override
  Future<List<TaskEntity>> getAllTasks() async {
    // Lógica para obtener todas las tareas desde la fuente de datos
    throw UnimplementedError();
  }

  @override
  Future<void> saveTask(TaskEntity task) async {
    // Lógica para guardar una tarea en la fuente de datos
    throw UnimplementedError();
  }

  @override
  assignTaskToUser(String taskId, String userId) {
    // TODO: implement assignTaskToUser
    throw UnimplementedError();
  }
}
