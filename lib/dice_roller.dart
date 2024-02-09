import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // var roll = 'assets/images/dice-2.png';
  var diceRoll = 2;
  rolldice() {
    setState(() {
      //   Image.asset('assets/images/dice-$diceRoll.png');
      diceRoll = randomiser.nextInt(6) + 1;
    });
    // print('Changed');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        // by default the column takes the full heighgt of page so use
        // main axis size to resize it accordingly.
        children: [
          Image.asset(
            'assets/images/dice-$diceRoll.png',
            width: 250,
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: const Color.fromARGB(255, 2, 0, 0),
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            child: const Text('Roll Again'),
          )
        ]);
  }
}
