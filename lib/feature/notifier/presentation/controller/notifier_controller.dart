import 'dart:async';

import 'package:flutter_chat/feature/notifier/presentation/controller/notification.dart';

class NotifierController {
  late final StreamController<Notification> _notificationController;
  Stream<Notification> get notificationStream => _notificationController.stream;

  NotifierController()
      : _notificationController = StreamController<Notification>.broadcast();

  void addNotification(Notification notification) {
    _notificationController.add(notification);
  }

  void dispose() {
    _notificationController.close();
  }
}
