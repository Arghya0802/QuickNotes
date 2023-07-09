import 'package:flutter/material.dart';
import 'package:test/rainbow_gradient.dart';

class OptionContainer extends StatelessWidget {
  const OptionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      decoration: Decorating.blur,
      child: Container(
        width: size / 2,
        child: const TextField(
          autocorrect: true,
          autofocus: true,
          maxLines: null,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 27,
          ),
        ),
      ),
    );
  }
}
