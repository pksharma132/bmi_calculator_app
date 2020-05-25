import 'package:bmi_app/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'about_me.dart';
import 'results_page.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF263026),
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/about me': (context) => AboutMe(),
      },
    );
  }
}
