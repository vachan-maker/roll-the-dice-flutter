import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        //colors for gradient passed as argument
        body: GradientContainer([Colors.red, Colors.amber]),
        //constructor function of GradientContainer class
      ),
    ),
  );
}
