import 'package:flutter/material.dart';

Widget calcButton(
  // custom function
    String buttonText, Color buttonColor, void Function()? buttonPressed) {
      
  return Container(
    // Creates a widget that combines common painting, positioning, and sizing widgets. The height and width values include the padding.
    width: 80,
    height: buttonText == '=' ? 130 : 50,
    padding: const EdgeInsets.all(0),
    child: ElevatedButton(
      onPressed: buttonPressed,
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            // shape of buttons
              borderRadius:BorderRadius.all(Radius.circular(30))),
          backgroundColor: buttonColor),
      child: Text(buttonText,
        style: const TextStyle(fontSize: 35, color: Colors.blue),
      ),
    ),
  );
}