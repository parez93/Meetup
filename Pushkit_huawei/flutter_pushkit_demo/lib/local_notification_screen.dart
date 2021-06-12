import 'package:flutter/material.dart';
import 'package:huawei_push/huawei_push_library.dart';


class LocalNotificationScreen extends StatefulWidget {
  @override
  _LocalNotificationScreenState createState() => _LocalNotificationScreenState();
}

class _LocalNotificationScreenState extends State<LocalNotificationScreen> {
  pushLocalNotification() async {
    try {
      Map<String, dynamic> localNotification = {
        HMSLocalNotificationAttr.TITLE: 'Notification Title',
        HMSLocalNotificationAttr.MESSAGE: 'Notification Message',
        HMSLocalNotificationAttr.TICKER: "OptionalTicker",
        HMSLocalNotificationAttr.TAG: "push-tag",
        HMSLocalNotificationAttr.BIG_TEXT: 'This is a bigText',
        HMSLocalNotificationAttr.SUB_TEXT: 'This is a subText',
        HMSLocalNotificationAttr.LARGE_ICON: 'ic_launcher',
        HMSLocalNotificationAttr.SMALL_ICON: 'ic_notification',
        HMSLocalNotificationAttr.IMPORTANCE: Importance.MAX,
        HMSLocalNotificationAttr.COLOR: "white",
        HMSLocalNotificationAttr.VIBRATE: true,
        HMSLocalNotificationAttr.VIBRATE_DURATION: 1000.0,
        HMSLocalNotificationAttr.ONGOING: false,
        HMSLocalNotificationAttr.DONT_NOTIFY_IN_FOREGROUND: false,
        HMSLocalNotificationAttr.AUTO_CANCEL: false,
        HMSLocalNotificationAttr.INVOKE_APP: false,
        HMSLocalNotificationAttr.ACTIONS: ["Yes", "No"],
        HMSLocalNotificationAttr.FIRE_DATE: DateTime.now().add(Duration(minutes: 1)).millisecondsSinceEpoch,
      };
      Map<String, dynamic> response = await Push.localNotification(localNotification);
      print("Pushed a local notification: " + response.toString());
    } catch (e) {
      print("Error: " + e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Notification"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: pushLocalNotification,
            child: Text("Fire"),
          ),
        ),
      ),
    );
  }
}
