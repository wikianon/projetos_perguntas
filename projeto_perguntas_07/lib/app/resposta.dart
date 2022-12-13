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
        child: Text(
          texto,
          style: TextStyle(fontSize: 12),
          selectionColor: Colors.white,
          textAlign: TextAlign.center,
        ), //Text
       onPressed: quandoSelecionado,
      ), //ElevatedButton
    ); //SizedBox
  }
}
