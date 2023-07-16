import 'package:face_auth_flutter/page/face_recognition/camera_page.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "İsim"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Soyisim"),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: CustomText(text: "Sicil No"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FaceScanScreen(),
                        ));
                  },
                  child: const Text("Giriş Yap"))
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  const CustomText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text,
          border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          errorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black))),
    );
  }
}
