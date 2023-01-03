import 'package:flutter/cupertino.dart';
import 'question.dart';
import 'answer.dart';

class Quizz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function() whenAnswer;

  const Quizz({
    super.key,
    required this.selectedQuestion,
    required this.questions,
    required this.whenAnswer,
  });

  bool get isThereSelecQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> answers = isThereSelecQuestion
        ? questions[selectedQuestion]['Answers'] as List<String>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'] as String),
        ...answers.map((text) => Answer(text, whenAnswer)).toList(),
      ],
    );
  }
}
