import 'package:flutter/material.dart';
import 'dart:math';

final randomInteger = Random();
// a bit more efficient as a new object doesn't have to be created everytime we want a random number

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  //returns a state object
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';
  int currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomInteger.nextInt(6) + 1; //
    }); //we are passing an anonymous function. Give updates that should be updated in the UI
    //re-execute build
  }

  @override
  Widget build(context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Roll the dice!",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        const Text("Click on the button to roll the dice"),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice')),
        Text(
          "You rolled the number $currentDiceRoll",
          style: const TextStyle(fontSize: 15, color: Colors.white70),
        )
      ],
    );
  }
}
