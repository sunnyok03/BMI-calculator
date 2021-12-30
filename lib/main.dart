import 'package:bmi_calculator/output_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'output_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/output': (context) => OutputPage(),
      },
    );
  }
}
