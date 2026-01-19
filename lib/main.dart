import 'package:flutter/material.dart';
import 'package:voice_project/views/Bottom_navigation/bottomnav.dart';
import 'package:voice_project/views/Login_Screen/loginscreen.dart';
import 'package:voice_project/views/Registration_Screen/registrationscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SignUpScreen());
  }
}
