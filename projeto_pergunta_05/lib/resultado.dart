import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final String texto;
  
  //Para o construtor exigir um parametro nomeado as variaveis devem estar dentro de chave {}.
  //Isso faz com que ao usar este construtor ele diga qual parametro deve ser usado dentro dele.
  //Este construtor abaixo exige um parametro nomeado do tipo texto ficando 
  //o texto: 'Meu Texto'
  Resultado({required this.texto});
  //texto: 'Argumento' dentro do construtor ficando da seguinte forma abaixo:
  //Resultado(texto: 'Texto'),
  

  //Este tipo de construtor abaixo nescessita de um argumento Texto
  //Resultado(this.texto);
  //Mas pode ficar vazio tambem usando da seguinte forma abaixo:
  //Resultado(''),
  

  @override
  Widget build(BuildContext context) {
    return Center(
      //Neste caso como o construtor Resultado vai receber um texto
      //o child: Text(), nao pode ser const.
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28, color: Colors.red),
      ), //Text
    ); //Center
  }
}
