import 'package:flutter/material.dart';

class Decorating {
  static BoxDecoration rainbow = BoxDecoration(
    gradient: rainbowColor,
  );

  static BoxDecoration blur = BoxDecoration(
    color: const Color.fromARGB(255, 106, 206, 206).withOpacity(0.4),
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
  );

  static LinearGradient rainbowColor = const LinearGradient(
    colors: <Color>[
      Colors.deepPurple,
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
