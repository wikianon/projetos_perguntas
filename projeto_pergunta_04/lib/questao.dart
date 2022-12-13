import 'package:flutter/material.dart';

//Classe que vai receber as questoes do AppPerguntas
class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28,
          color: Colors.green,
        ), //TextStyle
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}