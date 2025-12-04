import 'package:ex_u2/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'firebase_options.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

Future<void> _firebaseBackgroundHandler(RemoteMessage message) async {
  print("Notificación en segundo plano: ${message.notification?.title}");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging messaging = FirebaseMessaging.instance;
  await messaging.requestPermission();

  if (kIsWeb) {
    String? webToken = await FirebaseMessaging.instance.getToken(
      vapidKey: "BFD7v-T2Iv9vrQMukjHFAi-ugd89IAMx1ezWwYeEpffDjM-f38E5p4HDIUqbcy0ClBA4AnvrY32uusOiYIL8LD4",
    );
  }

  FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundHandler);

  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationsPage(),
    );
  }
}
