import 'package:flutter/material.dart';
import 'package:calculator_app/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({Key? key}) : super(key: key);
// stateful widget
  @override
  State<CalculatorView> createState() => _CalculatorViewState();
}

// variables
String equation = "0";
String result = "0";
String expression = "";
double equationFontSize = 38.0;
double resultFontSize = 48.0;

class _CalculatorViewState extends State<CalculatorView> {
  buttonPressed(String buttonText) {
    // used to check if the result contains a decimal
    (dynamic result) {
      // checks for decimal
      if (result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        // finds decimal in expression and keeps it seperated
        if (!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
          //
        }
      }
      return result;
    };

    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
      } else if (buttonText == "⌫") {
        equation = equation.substring(0, equation.length - 1);
        // deletes the latest input in the equation
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "+/-") {
        if (equation[0] != '-') {
          equation = '-$equation';
        } else {
          equation = equation.substring(1);
        }
      } else if (buttonText == "=") {
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

// replaces expressions
        try {
          Parser p = Parser();
          // converts string to int
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();

          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        if (equation == "0") {
          equation = buttonText;
        } else {
          equation = equation + buttonText;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black54,
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 18.0),
              child: Text('DEG', style: TextStyle(color: Colors.white38)),
            ),
            SizedBox(width: 20),
          ],
        ),
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                // allows you to scroll horizontally
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(result,
                                textAlign: TextAlign.left,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 80))),
                        const SizedBox(width: 20),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(equation,
                              style: const TextStyle(
                                fontSize: 40,
                                color: Colors.white38,
                              )),
                        ),

                        // display for delete 1 button

                        const SizedBox(width: 20),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('AC', Colors.white10, () => buttonPressed('AC')),
                calcButton('⌫', Colors.white10, () => buttonPressed('⌫')),
                calcButton('÷', Colors.white10, () => buttonPressed('÷')),
                calcButton("×", Colors.white10, () => buttonPressed('×')),
                // matches buttons to functions
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('7', Colors.white24, () => buttonPressed('7')),
                calcButton('8', Colors.white24, () => buttonPressed('8')),
                calcButton('9', Colors.white24, () => buttonPressed('9')),
                calcButton('-', Colors.white10, () => buttonPressed('-')),
                // matches buttons to functions
              ],
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton('4', Colors.white24, () => buttonPressed('4')),
                calcButton('5', Colors.white24, () => buttonPressed('5')),
                calcButton('6', Colors.white24, () => buttonPressed('6')),
                calcButton('+', Colors.white10, () => buttonPressed('+')),
                // matches buttons to functions
              ],
            ),
            const SizedBox(height: 10),
            // calculator number buttons

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        calcButton(
                            '1', Colors.white24, () => buttonPressed('1')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        calcButton(
                            '2', Colors.white24, () => buttonPressed('2')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        calcButton(
                            '3', Colors.white24, () => buttonPressed('3')),
                        // displays what is pressed
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        calcButton(
                            '+/-', Colors.white24, () => buttonPressed('+/-')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        // MediaQuery is used to fetch properties of the current media
                        calcButton(
                            '0', Colors.white24, () => buttonPressed('0')),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.04),
                        calcButton(
                            '.', Colors.white24, () => buttonPressed('.')),
                      ],
                    ),
                  ],
                ),
                calcButton('=', Colors.grey, () => buttonPressed('=')),
              ],
            )
          ],
        )));
  }
}
