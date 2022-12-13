import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  // a variavel this.quandoSelecionado do tipo função
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          texto,
          style: TextStyle(fontSize: 12),
          selectionColor: Colors.white,
        ), //Text
        onPressed: quandoSelecionado,
      ), //ElevatedButton
    ); //Container
  } //Widget build
} //Resposta StatelessWidget