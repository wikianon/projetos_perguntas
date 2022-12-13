import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';
import 'resultado.dart';

void main() {
  runApp(const PerguntaApp());
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
        //Para resolver erro de virgula no final de column 
        //apagar todo o Column desde o body e recriar novamente
        //Neste caso abaixo como o body esta verificando um valor booleano 
        //é nescessario passar um widget do tipo Text(), mesmo que nao receba nenhum argumento.
        //para fazer a troca da verificação.
        body: temPerguntaSelecionada? Column(
          children: <Widget>[
           const SizedBox(height: 10,),

            //Neste caso se o valor bool temPerguntaSelecionada nao estiver
            // antes do widget Column a variavel perguntaSelecionada vai dar erro de Range
            //dentro do vetor de perguntas.
            // as String é o mesmo que fazer o parser ou casting
            Questao(perguntas[perguntaSelecionada]['texto'] as String),

            //Espaco entre as perguntas e as respostas
           const SizedBox(height: 10,),
            // os tres pontinhos em resposta.map permite juntar o resultado da lista com o componente acima
            ...respostas.map((String r) => Resposta(r, responder)).toList(),
          ], //<Widget>
        ) 
        //: Container(), //Ao final do widget Column retornamos o
        //widget Container() nao retornando nada por que estamos verificando o valor true em
        //body: temPerguntaSelecionada? Column() : Container(),
        //mas podemos customizar o widget Container para fazer outras coisas.
        
        //: Resultado(''), //Ao finao do widget Column Retornamos o 
        //construtor Resultado por que estamos verificando o valor true em 
        //body: temPerguntaSelecionada? Column() : Resultado(''),

        //Este construtor exige um parametro nomeado mesmo que nao receba nenhum argumento.
        //Este construtor Resultado ao final do widget Column é nescessario por causa da verificação
        //do valor true em body: temPerguntaSelecionada? Column() : Resultado(texto: 'Ola!!!'),
        : Resultado(texto: 'Parabéns!!!'), //Final do widget Column
      ), //Scaffold
    ); //MaterialApp
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}
