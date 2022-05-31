import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String titleQuestion;
  const Question({
    Key? key,
    required this.titleQuestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        titleQuestion,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
