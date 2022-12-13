import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  const Questionario({super.key, 
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //(as List<Map<String, Object>>) faz um casting para nao dar erro
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) {
          return Resposta(
            //(as String) faz um casting para nao dar erro no resp[].
            //(as int) faz um casting para nao dar erro na função quantoResponder
            resp['texto'] as String, () => quantoResponder(resp['pontuacao'] as int),
          ); //Resposta
        }).toList(), //...respostas.map
      ], //children
    ); //Column
  }
}
