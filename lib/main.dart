import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é o seu nome?',
      'Qual a sua idade?',
      'De onde você é?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Ask App"),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: <Widget>[
            Question(perguntas[_perguntaSelecionada]),
            Answer('Resposta 1', _responder),
            Answer('Resposta 2', _responder),
            Answer('Resposta 3', _responder),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
