import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
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
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[perguntaSelecionada]),
            TextButton(
              onPressed: responder,
              child: Text("Resposta 1"),
            ),
            TextButton(
              onPressed: responder,
              child: Text("Resposta 2"),
            ),
            TextButton(
              onPressed: responder,
              child: Text("Resposta 3"),
            )
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
