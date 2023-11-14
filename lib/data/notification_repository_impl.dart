import 'package:flutter_application_1/domain/entities/notification_entity.dart';
import 'package:flutter_application_1/domain/repositories/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  @override
  Future<List<NotificationEntity>> getUserNotifications() async {
    // Lógica para obtener todas las notificaciones del usuario desde la fuente de datos
    throw UnimplementedError();
  }

  @override
  Future<void> saveNotification(NotificationEntity notification) async {
    // Lógica para guardar una notificación en la fuente de datos
    throw UnimplementedError();
  }
}
