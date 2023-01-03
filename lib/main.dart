import 'package:flutter/material.dart';
import 'quizz.dart';
import 'result.dart';

void main() => runApp(const QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;
  final _questions = [
    {
      'text': 'What is your favorite color?',
      'Answers': ['Black', 'Red', 'Blue', 'White'],
    },
    {
      'text': 'What is your favorite animal?',
      'Answers': ['Bunny', 'Snake', 'Dog', 'Cat'],
    },
    {
      'text': 'What is your favorite matter?',
      'Answers': ['Math', 'History', 'Geography', 'Philosophy'],
    }
  ];

  void answering() {
    if (isThereSelecQuestion) {
      setState(() {
        _selectedQuestion++;
      });
    }
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
                  whenAnswer: answering,
                )
              : const Result('Thank you for your answers!!')),
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
