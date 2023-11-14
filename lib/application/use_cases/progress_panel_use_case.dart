import 'package:flutter_application_1/domain/entities/project_entity.dart';
import 'package:flutter_application_1/domain/repositories/project_repository.dart';

class ProgressPanelUseCase {
  final ProjectRepository _projectRepository;

  ProgressPanelUseCase(this._projectRepository);

  Future<List<ProjectEntity>> getProjects() async {
    return _projectRepository.getAllProjects();
  }

  Future<void> saveProject(ProjectEntity project) async {
    await _projectRepository.saveProject(project);
  }
}
