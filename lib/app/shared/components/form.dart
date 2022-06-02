import 'package:flutter/material.dart';
import 'package:pergunta_app/app/shared/components/question.dart';

import 'answer.dart';

class QuestionsForm extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int selectedQuestions;
  final void Function(int) responder;

  bool get isQuestionSelected {
    return selectedQuestions < questions.length;
  }

  const QuestionsForm({
    Key? key,
    required this.selectedQuestions,
    required this.questions,
    required this.responder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> answersValues = isQuestionSelected
        ? questions[selectedQuestions].cast()['resposta']
        : [];

    return Column(
      children: <Widget>[
        Question(
            titleQuestion: questions[selectedQuestions]['texto'].toString()),
        ...answersValues.map((resp) {
          return Answer(
            textAnsewrs: resp['texto'].toString(),
            onPressed: () => responder(int.parse(resp['scores'].toString())),
          );
        }).toList(),
      ],
    );
  }
}
