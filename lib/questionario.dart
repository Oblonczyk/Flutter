import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  
  const Questionario({
    super.key,
    required this.perguntas,
    required this.perguntaSelecionada, 
    required this.responder
    });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        // ignore: unnecessary_to_list_in_spreads
        ...respostas.map((t) => Resposta(t, responder)).toList(),
      ],
    );
  }
}
