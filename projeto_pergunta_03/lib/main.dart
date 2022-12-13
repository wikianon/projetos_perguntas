import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;
  final perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Azul', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cabra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
    }
  ];

  void responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas'] as List<String>
        : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ), //AppBar
        
        body: temPerguntaSelecionada ? Column(
                children: <Widget>[
                  SizedBox(height: 10,),
                  // as String é o mesmo que fazer o parser ou casting
                  Questao(perguntas[perguntaSelecionada]['texto'] as String),
                  //Espaco entre as perguntas e as respostas
                  SizedBox(height: 10,),
                  // os tres pontinhos em resposta.map permite juntar o resultado da lista com o componente acima
                  ...respostas.map((String r) => Resposta(r, responder)).toList(),
                ], //<Widget>
              ) : Center( //Column
                child: Text(
                  'Parabéns!',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.orange,
                  ), //TextStyle
                ), //Text
              ), //Column Center
      ), //Scaffold
    ); //MaterialApp
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}