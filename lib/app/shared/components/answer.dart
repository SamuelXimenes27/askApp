import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textAnsewrs;
  final void Function() onPressed;

  const Answer({
    Key? key,
    required this.textAnsewrs,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blue,
          primary: Colors.black,
        ),
        onPressed: onPressed,
        child: Text(textAnsewrs),
      ),
    );
  }
}
