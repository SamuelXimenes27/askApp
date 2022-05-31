import 'package:flutter/material.dart';

import '../../shared/components/answer.dart';
import '../../shared/components/question.dart';

class AskAppPage extends StatefulWidget {
  const AskAppPage({Key? key}) : super(key: key);

  @override
  State<AskAppPage> createState() => _AskAppState();
}

class _AskAppState extends State<AskAppPage> {
  var _selectedQuestions = 0;

  void _responder() {
    setState(() {
      _selectedQuestions++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Qual é o seu nome?',
      'Qual a sua idade?',
      'De onde você é?'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Ask App")),
          // backgroundColor: Colors.amber,
        ),
        body: Column(
          children: <Widget>[
            Question(titleQuestion: questions[_selectedQuestions]),
            Answer(textAnsewrs: 'Resposta 1', onPressed: _responder),
            Answer(textAnsewrs: 'Resposta 2', onPressed: _responder),
            Answer(textAnsewrs: 'Resposta 3', onPressed: _responder),
          ],
        ),
      ),
    );
  }
}
