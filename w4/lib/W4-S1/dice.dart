import 'dart:math';
import 'package:flutter/material.dart';

const List<String> diceImages = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State createState() => _DiceRollerState();
}
class _DiceRollerState extends State<DiceRoller> {
String activeDiceImage ='assets/images/dice-2.png';

  void rollDice() {
    setState(() {
      activeDiceImage = diceImages[Random().nextInt(6)]; // Randomly selects an image
    });
  }


  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: rollDice, // when tap the dice will roll
        child:Image.asset(
          
          activeDiceImage,
          width: 200,
        ),
        ),

        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}

void main() => runApp(const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Center(child: DiceRoller()),
      ),
    ));
