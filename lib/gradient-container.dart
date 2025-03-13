import 'package:flutter/material.dart';

import 'dice_roller.dart';

var startTextAlignment = Alignment.topLeft;
var endTextAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: startTextAlignment,
            end: endTextAlignment),
      ),
      child: Center(
        child: DiceRoller()
      )
    );
  }
}
