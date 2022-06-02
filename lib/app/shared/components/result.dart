import 'package:flutter/material.dart';

class ResultFormMessage extends StatefulWidget {
  final void Function()? onPressed;
  final String? scoreValue;
  const ResultFormMessage({
    Key? key,
    this.onPressed,
    this.scoreValue,
  }) : super(key: key);

  @override
  State<ResultFormMessage> createState() => _ResultFormMessageState();
}

class _ResultFormMessageState extends State<ResultFormMessage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Parabens!",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Sua pontuaçao foi de ${widget.scoreValue}"),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: widget.onPressed,
            child: const Text('Voltar para o inicio'),
          )
        ],
      ),
    );
  }
}
