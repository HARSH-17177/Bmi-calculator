import 'package:bmi/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // primaryColor: Color(0xFF0A0e21),
      //
      //   accentColor: Colors.pink,
      //   scaffoldBackgroundColor: Color(0xFF090c22),
      //   textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white)),
      // ),
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Color(0xFF0A0e21)),
        scaffoldBackgroundColor: Color(0xFF090c22),
      ),

      home: InputPage(),
    );
  }
}
