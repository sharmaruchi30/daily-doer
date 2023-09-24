import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:app_settings/app_settings.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: true,
        badge: true,
        criticalAlert: true,
        carPlay: true,
        provisional: true,
        sound: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print("User Granted Persmisson");
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      print("User Granted Provisional Persmisson");
    } else if(settings.authorizationStatus == AuthorizationStatus.denied) {
      AppSettings.openAppSettings(type: AppSettingsType.notification);
      print("User Denied Persmisson");
    }
  }
}
