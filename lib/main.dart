import 'package:flutter/material.dart';
import 'package:lab_exp/home.dart';

void main() {
  runApp(MyApp());
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), //This is where we specify our homepage
    );
  }
}