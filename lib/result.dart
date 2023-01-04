import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(finalResult,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
