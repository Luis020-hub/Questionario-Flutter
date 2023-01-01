// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/answer.dart';
import 'question.dart';

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

  void _answering() {
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
    List<String> answers = isThereSelecQuestion
        ? _questions[_selectedQuestion]['Answers'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: isThereSelecQuestion
            ? Column(
                children: [
                  Question(_questions[_selectedQuestion]['text'] as String),
                  ...answers.map((text) => Answer(text, _answering)).toList(),
                ],
              )
            : const Center(
                child: Text(
                  "Thank you \nfor your answers!!!",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                  softWrap: true,
                ),
              ),
      ),
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
