import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String texto;
  final void Function() onPressed;

  Answer(this.texto, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          primary: Colors.black,
        ),
        onPressed: onPressed,
        child: Text(texto),
      ),
    );
  }
}
