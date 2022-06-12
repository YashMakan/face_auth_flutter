import 'package:camera/camera.dart';
import 'package:face_auth_flutter/page/face_recognition/camera_page.dart';
import 'package:face_auth_flutter/page/login_page.dart';
import 'package:face_auth_flutter/utils/local_db.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  await Hive.initFlutter();
  await HiveBoxes.initialize();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Face Auth",
        home: LoginPage(),
      );
}
