import 'package:flutter/material.dart';
import 'package:flutter_hackathon/screens/main_screen.dart';

void main() => runApp(ExperienceApp());

class ExperienceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}