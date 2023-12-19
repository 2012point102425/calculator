import 'package:flutter/material.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key, this.title=''});
  final String title;

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: const Text('something'),
    ),
    body: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Card(
color: Colors.lightGreen[50],
child: const Padding(
padding: EdgeInsets.all(15.0),
child: Text(
'placeholder',
textScaleFactor: 2.0,
),
),
),
 const Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
],
),
const Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
],

),
Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children:<Widget>[
],
),
Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
],
),
Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
],
),
],
),
Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
],
),
],
),
],
    )
    );
  }
}