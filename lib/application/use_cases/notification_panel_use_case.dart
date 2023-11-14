import 'package:flutter_application_1/domain/entities/notification_entity.dart';
import 'package:flutter_application_1/domain/repositories/notification_repository.dart';

class NotificationPanelUseCase {
  final NotificationRepository _notificationRepository;

  NotificationPanelUseCase(this._notificationRepository);

  Future<List<NotificationEntity>> getUserNotifications() async {
    return _notificationRepository.getUserNotifications();
  }

  Future<void> saveNotification(NotificationEntity notification) async {
    await _notificationRepository.saveNotification(notification);
  }
}
