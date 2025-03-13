import 'package:flutter/material.dart';
import 'package:rool_rice_app/gradient-container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        Colors.red,
        Colors.white,
      )),
    ),
  );
}
