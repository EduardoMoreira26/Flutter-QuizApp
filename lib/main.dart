import 'package:flutter/material.dart';
import 'dart:core';
import './resultado.dart';
import './questionario.dart';

main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  var _clickedQuestion = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      'text': 'Qual é sua cor favorita?',
      'answers': [
        {'text': 'Preto', 'score': 5},
        {'text': 'Verde', 'score': 3},
        {'text': 'Vermelho', 'score': 10},
        {'text': 'Azul', 'score': 6},
      ],
    },
    {
      'text': 'Qual é sua animal favorito?',
      'answers': [
        {'text': 'Lobo', 'score': 5},
        {'text': 'Tigre', 'score': 3},
        {'text': 'Tarantula', 'score': 10},
        {'text': 'Tubarão', 'score': 6},
      ],
    },
    {
      'text': 'Qual é seu instrutor preferido?',
      'answers': [
        {'text': 'Mateus', 'score': 5},
        {'text': 'Eduardo', 'score': 3},
        {'text': 'Gabriela', 'score': 10},
        {'text': 'Luana', 'score': 6},
      ],
    },
  ];

  void _answer(int score) {
    if (hasSelectedQuestion) {
      setState(() {
        _clickedQuestion++;
        _totalScore += score;
      });
      // print(_clickedQuestion);
      print(_totalScore);
    }
  }

  void _resetQuiz() {
    setState(() {
      _clickedQuestion = 0;
      _totalScore = 0;
    });
  }

  bool get hasSelectedQuestion {
    return _clickedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Quizz App')),
      ),
      body: hasSelectedQuestion
          ? Quiz(
              questions: _questions,
              whenAnswer: _answer,
              clickedQuestion: _clickedQuestion,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}