import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quantoResponder;
  
  //Construtor com parametros nomeados
  //O mesmo exige os parametros nomeados em ordem.
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
    //as List<Map<String, Object>> no final do vetor respostas[perguntasSelecionadas]['respostas'] faz um cast para nao dar erro nos textos.
    List<Map<String, Object>> respostas = temPerguntaSelecionada ? perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>> : [];

    return Column(
      children: <Widget>[
        //as String faz um casting para nao dar erro
        Questao(perguntas[perguntaSelecionada]['texto'] as String),
        ...respostas.map((resp) => Resposta(resp['texto'] as String, quantoResponder)).toList(),
      ],
    );
  }
}
