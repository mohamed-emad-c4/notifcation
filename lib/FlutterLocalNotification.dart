import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> backgroundHandler(NotificationResponse details) async {
  // معالجة الإشعارات في الخلفية هنا
}

class FlutterLocalNotification {
  FlutterLocalNotificationsPlugin flutterLocalNotification =
      FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    );

    await flutterLocalNotification.initialize(
      initializationSettings,
      onDidReceiveBackgroundNotificationResponse: backgroundHandler,
      onDidReceiveNotificationResponse: (details) {
        // معالجة الإشعارات هنا
      },
    );
  }

  void showNotification({
    String title = 'Notification',
    String body = 'Flutter Local Notification',
  }) {
    flutterLocalNotification.show(
      0,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'id1',
          'basic channel',
          importance: Importance.max,
          priority: Priority.high,
        ),
      ),
    );
  }
}
