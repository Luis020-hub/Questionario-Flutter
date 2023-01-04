import 'package:flutter/cupertino.dart';
import 'question.dart';
import 'answer.dart';

class Quizz extends StatelessWidget {
  final int selectedQuestion;
  final List<Map<String, Object>> questions;
  final void Function(int) whenAnswer;

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
    List<Map<String, Object>> answers = isThereSelecQuestion
        ? questions[selectedQuestion]['Answers'] as List<Map<String, Object>>
        : [];

    return Column(
      children: <Widget>[
        Question(questions[selectedQuestion]['text'] as String),
        ...answers.map((ans) {
          return Answer(
            ans['text'] as String,
            () => whenAnswer(int.parse(ans['score'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
