import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;
  
  //Este construtor nao pode ser const pois recebe alteração a cada evento.
  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  //fraseResultado é um tipo de função String.
  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'Você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: const TextStyle(
              fontSize: 28, 
              color: Colors.amber
              ), //TextStyle
          ), //Text
        ), //Center

        ElevatedButton(
          onPressed: quandoReiniciarQuestionario,
          child: const Text(
            'Reiniciar?',
            style: TextStyle(
              fontSize: 12, 
              color: Colors.white
              ), //TextStyle
            //selectionColor: Colors.green,
            textAlign: TextAlign.center,
          ), //Text
        ), //ElevatedButton
      ], //children
    ); //Column
  }
}