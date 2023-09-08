import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff000000),
        scaffoldBackgroundColor:Color(0xff000000),
      ),
      home: InputPage(),

    );
  }
}



