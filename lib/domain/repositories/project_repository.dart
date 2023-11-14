// En domain/repositories/project_repository.dart

import 'package:flutter_application_1/domain/entities/project_entity.dart';

abstract class ProjectRepository {
  Future<List<ProjectEntity>> getAllProjects();
  Future<ProjectEntity?> getProjectById(String projectId);
  Future<void> createProject(ProjectEntity project);
  Future<void> updateProject(ProjectEntity project);
  Future<void> deleteProject(String projectId);

  saveProject(ProjectEntity project) {}
}
