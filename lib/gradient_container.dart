import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  //constructor function should accept key argument
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  //this will accept a named argument key and forward it to the parent class - stateless widget
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(child: DiceRoller()),
    );
  }
}
