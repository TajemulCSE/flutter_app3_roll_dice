import 'package:app3/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientLayout extends StatelessWidget {
  // const GradientLayout({key}):super(key: key);
  GradientLayout({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.orange, Colors.red, Colors.blue],
              begin: Alignment.topRight,
              end: Alignment.bottomRight)
              ),
      child: Center(
        
          child: DiceRoller()
      ),
    );
  }
}
