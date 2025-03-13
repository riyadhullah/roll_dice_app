import 'package:flutter/material.dart';
import 'package:rool_rice_app/style_text.dart';

var startTextAlignment = Alignment.topLeft;
var endTextAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(fontSize: 30),
              ),
              child: const Text("Roll dice"),
            ),
          ],
        ),
      ),
    );
  }
}
