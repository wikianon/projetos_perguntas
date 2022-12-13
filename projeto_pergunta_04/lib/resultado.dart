import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      //Neste caso como o  Text nao recebe uma variavel texto ele pode ser const
      child: const Text(
        'Parabéns!',
        style: TextStyle(
         fontSize: 28, 
         color: Colors.orange
         ), //TextStyle
      ), //Text
    ); //Center
  }
}
