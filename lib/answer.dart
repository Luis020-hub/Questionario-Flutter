import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;

  final void Function() onSelection;

  const Answer(this.text, this.onSelection, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        onPressed: onSelection,
        child: Text(text),
      ),
    );
  }
}
