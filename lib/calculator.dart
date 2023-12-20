import 'package:flutter/material.dart';

class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key, this.title=''});
  final String title;

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  final String _str='o';
  add(String a)  {

  }
deleteAll() {
return "";
}
deleteOne() {

}
getResult() {

}
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
child: Padding(
padding: const EdgeInsets.all(15.0),
child: Text(
_str,
textScaleFactor: 2.0,
),
),
),
Row(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: <Widget>[
  ElevatedButton(

style: const TextStyle(color: Colors.white),

onPressed: (){deleteAll();},

child: const Text(
'C',
),
  ),
ElevatedButton(
child: const Text(
'<-',
style: TextStyle(color: Colors.white)
),
onPressed: (){deleteOne();},


),
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
),
    );
    
  }
}