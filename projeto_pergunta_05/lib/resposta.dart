import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  // a variavel this.quandoSelecionado do tipo função
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    
    //O ElevatedButton cria um botao de acordo o tamanho da palavra.
    return ElevatedButton(
        onPressed: quandoSelecionado,
        child: Text(
          texto,
          style: const TextStyle(fontSize: 12),
          selectionColor: Colors.white,
          textAlign: TextAlign.center,
        ),
      ); //ElevatedButton

    
    /*
    //O Container cria um botao que pega toda a largura da tela
    return Container(
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
    ); //Container
  */

  }
}