import 'package:flutter_application_1/domain/entities/project_entity.dart';
import 'package:flutter_application_1/domain/repositories/project_repository.dart';

class ProjectRepositoryImpl implements ProjectRepository {
  @override
  Future<List<ProjectEntity>> getAllProjects() async {
    // Lógica para obtener todos los proyectos desde la fuente de datos
    throw UnimplementedError();
  }

  @override
  Future<void> saveProject(ProjectEntity project) async {
    // Lógica para guardar un proyecto en la fuente de datos
    throw UnimplementedError();
  }

  @override
  Future<void> createProject(ProjectEntity project) {
    // TODOs: implement createProject
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProject(String projectId) {
    // TODOs: implement deleteProject
    throw UnimplementedError();
  }

  @override
  Future<ProjectEntity?> getProjectById(String projectId) {
    // TODOs: implement getProjectById
    throw UnimplementedError();
  }

  @override
  Future<void> updateProject(ProjectEntity project) {
    // TODOs: implement updateProject
    throw UnimplementedError();
  }
}
