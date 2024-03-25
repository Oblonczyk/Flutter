import 'package:flutter/material.dart';
import 'package:projeto_quiz/resultado.dart';
import './questionario.dart';

main() {
  runApp(const PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é  seu animal favorito?',
        'respostas': ['Coelho', 'Porco', 'Rato', 'Tigre']
      },
      {
        'texto': 'Qual é  seu professor favorito?',
        'respostas': ['Mauro', 'Max', 'Marudi', 'Nivaldo']
      },
    ];  

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        // ignore: unnecessary_cast
        body: temPerguntaSelecionada
        ? Questionario(
          perguntas: _perguntas, 
          perguntaSelecionada: _perguntaSelecionada, 
          responder: _responder)
          : const Resultado(),
      ) ,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
