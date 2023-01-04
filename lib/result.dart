import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {super.key});

  String get finalResult {
    if (score < 8) {
      return 'Congratulations!';
    } else if (score < 12) {
      return 'Good!';
    } else if (score < 16) {
      return 'Awsome!';
    } else {
      return 'Nível Jedi!';
    }
  }

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
