import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  
  void responder(){
    print("Pergunta resopndia!");
  }

@override
  Widget build(BuildContext context) {
    final perguntas = [
    'Qual é sua cor favorita',
    'Qual é sua animal favorito',
  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            ),
          ],
        ),
      ),
    );
  }
}