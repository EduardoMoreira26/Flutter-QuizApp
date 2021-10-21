import 'package:flutter/material.dart';

class Resposta  extends StatelessWidget {

  final String textButton;

  Resposta(this.textButton);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(textButton),
      onPressed: null,
    );
  }

  //  @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     margin: EdgeInsets.all(20),
  //     child: Text(
  //       textButton,
  //       style: TextStyle(fontSize: 28),
  //       textAlign: TextAlign.center,
  //     ),
  //   );

}