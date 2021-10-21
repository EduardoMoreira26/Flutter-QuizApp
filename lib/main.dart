import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  final List _perguntas = const [{
      'texto': 'Qual é sua cor favorita?',
      'respostas': ['Preto', 'Azul', 'Verde', 'Vermelho'],
    },
    {
      'texto':'Qual é sua animal favorito?',
      'respostas': ['Leão', 'Elefante', 'Coelho', 'Cachorro'],
    },
    {
      'texto':'Qual é seu instrutor preferido?',
      'respostas': ['Léo', 'Pedro', 'Eduardo', 'Juliana'],
  }];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  void _responder(){
    if(temPerguntaSelecionada){
    setState(() {
      _perguntaSelecionada++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
   
    List<String> respostas = temPerguntaSelecionada ? _perguntas[_perguntaSelecionada]['respostas'] : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(_perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ) : Center(
          child: Text(
            'Parabéns!!!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 36
            ),
          ),
        ),
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}