import 'package:calculator_app/calculator.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter calculator",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorHomePage(),
    );
  }
}
void main(){
  runApp(const MyApp());
}