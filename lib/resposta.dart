import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onSelect;

  Answer(this.text, this.onSelect);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.blue),
            onPressed: onSelect,
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            )));
  }
}