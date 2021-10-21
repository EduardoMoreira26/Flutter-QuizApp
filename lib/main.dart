import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';


main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
        });
  }

  @override
  Widget build(BuildContext context) {
    final List perguntas = [{
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


    List<Widget> respostas = [];
    for (String textoResposta in perguntas[_perguntaSelecionada]['respostas']) {
      respostas.add(Resposta(textoResposta, _responder));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
            ...respostas,
          ],
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