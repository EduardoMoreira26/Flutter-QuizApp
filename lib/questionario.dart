import 'package:flutter/material.dart';
import './resposta.dart';
import './questao.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int clickedQuestion;
  final void Function(int) whenAnswer;

  Quiz({
    required this.questions,
    required this.clickedQuestion,
    required this.whenAnswer,
  });

  bool get hasSelectedQuestion {
    return clickedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answers = hasSelectedQuestion
        ? questions[clickedQuestion].cast()['answers']
        : null;
    return Column(
      children: [
        Question(questions[clickedQuestion]['text'].toString()),
        ...answers.map((answer) => Answer(answer['text'] as String,
            () => whenAnswer(int.parse(answer['score'].toString()))))
      ],
    );
  }
}