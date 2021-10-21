import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

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


  void _responder(){
    if(temPerguntaSelecionada){
    setState(() {
      _perguntaSelecionada++;
      });
    }
  }

   bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
   
    

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada ?
        Questionario(
          perguntas: _perguntas,
          perguntaSelecionada: _perguntaSelecionada,
          quandoResponder: _responder,
        )
        : Resultado('Parabéns!')
      ),
    );
  }

}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState(){
    return _PerguntaAppState();
  }
}