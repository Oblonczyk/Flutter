import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Questao extends StatelessWidget {
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Questao(this.texto);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      )
    );
  }
}