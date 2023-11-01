import 'package:bmi_calculater/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(application());
}

class application extends StatelessWidget {
  const application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'dm'),
      home: homescreen(),
    );
  }
}
