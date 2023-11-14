import 'package:flutter_application_1/domain/entities/notification_entity.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntity>> getUserNotifications();
  Future<void> saveNotification(NotificationEntity notification);
}
