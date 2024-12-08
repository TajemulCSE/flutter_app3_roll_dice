import 'package:flutter/material.dart';
import 'dart:math';

var imageAsset = 'assets/dice-six-faces-1.png';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}

class _DiceRoller extends State<DiceRoller> {
  void roll_dice_fubnction()
{
   setState(() {
                var random_number = Random().nextInt(5) + 1;
                imageAsset = 'assets/dice-six-faces-$random_number.png';
                print("image change");
              });
  
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageAsset,
          width: 150, 
        ),
        TextButton(
            onPressed: roll_dice_fubnction,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 25)),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
