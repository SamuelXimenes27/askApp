import 'package:flutter/material.dart';

import '../../shared/components/result.dart';
import '../../shared/components/form.dart';

class AskAppPage extends StatefulWidget {
  const AskAppPage({Key? key}) : super(key: key);

  @override
  State<AskAppPage> createState() => _AskAppState();
}

class _AskAppState extends State<AskAppPage> {
  var _selectedQuestions = 0;
  var _totalPoints = 0;

  final _questions = const [
    {
      'text': 'Qual é o seu animal favorito?',
      'resposta': [
        {'text': 'Cachorro', 'scores': 10},
        {'text': 'Gato', 'scores': 8},
        {'text': 'Coelho', 'scores': 7},
        {'text': 'Cavalo', 'scores': 6},
      ]
    },
    {
      'text': 'Qual a sua cor favorita?',
      'resposta': [
        {'text': 'Preto', 'scores': 9},
        {'text': 'Branco', 'scores': 5},
        {'text': 'Azul', 'scores': 10},
        {'text': 'Amarelo', 'scores': 1},
      ]
    },
    {
      'text': 'Qual a sua cidade?',
      'resposta': [
        {'text': 'Fortaleza', 'scores': 9},
        {'text': 'Caucaia', 'scores': 10},
        {'text': 'Sobral', 'scores': 2},
        {'text': 'Crateus', 'scores': 1},
      ]
    },
  ];

  void _answerForm(int score) {
    if (isQuestionSelected) {
      setState(() {
        _selectedQuestions++;
        _totalPoints += score;
      });
    }
  }

  void _restartForms() {
    setState(() {
      _selectedQuestions = 0;
      _totalPoints = 0;
    });
  }

  bool get isQuestionSelected {
    return _selectedQuestions < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Ask App")),
        ),
        body: isQuestionSelected
            ? QuestionsForm(
                questions: _questions,
                responder: _answerForm,
                selectedQuestions: _selectedQuestions,
              )
            : ResultFormMessage(
                scoreValue: _totalPoints.toString(),
                onPressed: _restartForms,
              ),
      ),
    );
  }
}
