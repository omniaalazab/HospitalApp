import 'package:flutter/material.dart';
import 'package:task_app/Views/HomeView.dart';

void main() {
  runApp(DoctorApp());
}

class DoctorApp extends StatelessWidget {
  DoctorApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
