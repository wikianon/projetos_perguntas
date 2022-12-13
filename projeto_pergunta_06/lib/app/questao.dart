import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      //Neste caso como o Text recebe uma variavel texto
      //o Text nao pode ser const
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28, color: Colors.red),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
