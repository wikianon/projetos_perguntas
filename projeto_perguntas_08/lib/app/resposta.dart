import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(
          texto,
          style: const TextStyle(fontSize: 12, color: Colors.white),
          //selectionColor: Colors.red,
          textAlign: TextAlign.center,
        ), //Text
      ), //ElevatedButton
    ); //SizedBox
  }
}
