import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quantoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quantoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //as List<Map<String, Object>> ao final do vetor perguntas[perguntaSelecionada]['resposta'] faz um casting para nao dar erro.
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> : [];

    return Column(
      children: <Widget>[
        //as String dentro de Questao faz um casting para nao dar erro.
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) {
          //(as String) e (as int) faz um casting para nao dar erro.
          return Resposta(resp['texto'] as String,() => quantoResponder(resp['pontuacao'] as int));
        }).toList(),
      ], //children
    ); //Column
  } //Widget build
} //Questionario extends StatelessWidget