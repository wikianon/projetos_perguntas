import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(texto,
        style: TextStyle(
          //define a cor do texto do botao dentro de TextStyle
          //color: Colors.black,
          fontSize: 12,
          ), //TextStyle
        //Define a cor do texto do botao dentro de Text
        selectionColor: Colors.white,
        ), //Text
        
         //Click onPressed
         onPressed: quandoSelecionado,

        //False onPressed
        //onPressed: (){},        
      ), //ElevatedButton
    ); //Container
  }
}