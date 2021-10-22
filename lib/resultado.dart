import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final void Function() resetQuiz;

  Result(this.finalScore, this.resetQuiz);

  String get resultMessage {
    if (finalScore < 8) {
      return 'Parabéns!';
    } else if (finalScore < 12) {
      return 'Você é bom!';
    } else if (finalScore < 16) {
      return 'Muito Bom!';
    } else {
      return 'Level Jedi!';
    }
    resetQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: Text(
          resultMessage,
          style: TextStyle(fontSize: 28),
        )),
        Container(
          width: 200,
          child: ElevatedButton(
              onPressed: resetQuiz,
              child: Text(
                'Reiniciar',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}