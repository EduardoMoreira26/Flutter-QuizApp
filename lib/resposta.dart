import 'package:flutter/material.dart';

class Resposta  extends StatelessWidget {
  final String textButton;
  final void Function() quandoSelecionado;

  Resposta(this.textButton, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        // color = Colors.blue,
        // textColor = Colors.white,
        child: Text(textButton),
        onPressed: quandoSelecionado,
      ),
    );
  }

}