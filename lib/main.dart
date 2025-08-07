import 'package:flutter/material.dart';
import 'package:hrastore_rahman/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HRA Store',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.black,
      )),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
