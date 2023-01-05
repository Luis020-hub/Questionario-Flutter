import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final void Function() whenRestart;

  const Result(this.score, this.whenRestart, {super.key});

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(finalResult,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              )),
        ),
        TextButton(
            onPressed: whenRestart,
            style: TextButton.styleFrom(
              foregroundColor: Colors.blue[900],
            ),
            child: const Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18),
            ))
      ],
    );
  }
}
