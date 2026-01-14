import 'package:flutter/material.dart';
import 'package:voice_project/views/Bottom_navigation/bottomnav.dart';
import 'package:voice_project/views/Emergency_Screen/emergency.dart';
import 'package:voice_project/views/Home_Screen/homescreen.dart';
import 'package:voice_project/views/Profile_Screen/profilescreen.dart';
import 'package:voice_project/views/Simplevoice_Assist/simplevoiceassist.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: MainNavigationScreen());
  }
}
