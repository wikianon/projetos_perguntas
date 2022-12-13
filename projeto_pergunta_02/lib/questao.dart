import 'package:flutter/material.dart';

//Classe que vai receber as questoes do AppPerguntas
class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(
          color: Colors.red,
          fontSize: 20,
          ),
        textAlign: TextAlign.center,
      ),
    );
  }
}