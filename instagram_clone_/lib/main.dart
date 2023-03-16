import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/const/colors.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';

import 'screens/auth/login_screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const LoginScreen(),
    );
  }
}
