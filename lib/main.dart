import 'package:flutter/material.dart';
import 'quizz.dart';
import 'result.dart';

void main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'text': 'What is your favorite color?',
      'Answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 10},
        {'text': 'White', 'score': 10}
      ],
    },
    {
      'text': 'What is your favorite animal?',
      'Answers': [
        {'text': 'Bunny', 'score': 10},
        {'text': 'Snake', 'score': 10},
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 10}
      ],
    },
    {
      'text': 'What is your favorite matter?',
      'Answers': [
        {'text': 'Math', 'score': 10},
        {'text': 'History', 'score': 10},
        {'text': 'Geography', 'score': 10},
        {'text': 'Philosophy', 'score': 10}
      ],
    }
  ];

  void _answering(int score) {
    if (isThereSelecQuestion) {
      setState(() {
        _selectedQuestion++;
        _totalScore += score;
      });
    }
  }

  void _restart() {
    setState(() {
      _selectedQuestion = 0;
      _totalScore = 0;
    });
  }

  bool get isThereSelecQuestion {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Perguntas'),
          ),
          body: isThereSelecQuestion
              ? Quizz(
                  questions: _questions,
                  selectedQuestion: _selectedQuestion,
                  whenAnswer: _answering,
                )
              : Result(_totalScore, _restart)),
    );
  }
}

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
