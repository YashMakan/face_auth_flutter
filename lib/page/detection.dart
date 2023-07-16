import 'package:face_auth_flutter/page/face_recognition/camera_page.dart';
import 'package:face_auth_flutter/page/login_view.dart';
import 'package:face_auth_flutter/utils/local_db.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class Detection extends StatefulWidget {
  const Detection({Key? key}) : super(key: key);

  @override
  State<Detection> createState() => _DetectionState();
}

class _DetectionState extends State<Detection> {
  @override
  void initState() {
    printIfDebug(LocalDB.getUser().name);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Image.asset("assets/metro2.png"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton(
                  text: 'Register',
                  icon: Icons.app_registration_rounded,
                  onClicked: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const FaceScanScreen()));
                  },
                ),
                const SizedBox(height: 24),
                buildButton(
                  text: 'Login',
                  icon: Icons.login,
                  onClicked: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginView()));
                  },
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildButton({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) =>
      ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black26,
          minimumSize: const Size.fromHeight(50),
        ),
        icon: Icon(icon, size: 26),
        label: Text(
          text,
          style: const TextStyle(fontSize: 20),
        ),
        onPressed: onClicked,
      );
}
