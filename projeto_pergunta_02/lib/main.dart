import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

void main() {
  runApp(const PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  @override
  State<PerguntaApp> createState() => PerguntaAppState();
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  bool incrementando = true;

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?',
    'Qual é o seu carro favorito?',
    'Qual é o seu cigarro favorito?',
    'Qual é o seu celular favorito?',
  ];

  void responder() {

    int minArray = 0;
    int maxArray = perguntas.length - 1;

    setState(() {
      //verifica se esta incrementando.
      if (incrementando) {
        perguntaSelecionada++;
        if (perguntaSelecionada == maxArray) {
          incrementando = false;
          //incrementando = !incrementando;
        }
      } else {        
        perguntaSelecionada--;
        if (perguntaSelecionada == minArray) {
          incrementando = true;
          //incrementando = !incrementando;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('App Perguntas'),
        ), //AppBar

        body:
            //Não é nescessario o widget center pois
            //estamos usando dentro do widget column
            //o MainAxisAlingment.center
            //Center(

            //child:
            //Como o widget Center foi comentado
            //O widget Column agora passa a participar do body:
            //deixando de usar o child
            Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Selecione a Pergunta:',
            ), //Text

            Questao(perguntas[perguntaSelecionada]),

            //Espaco do texto selecione perguntas
            //SizedBox(height: 10),
            //Text(
            //    perguntas[perguntaSelecionada],
            //    style: TextStyle(fontSize: 12),
            //  ), //Text

            ElevatedButton(
              onPressed: () {
                setState(() {
                  responder();
                });
              },
              child: const Text(
                'Selecione',
                style: TextStyle(fontSize: 12),
              ), //Text
            ), //ElevatedButton

            //Resposta('Selecione', responder),

            Resposta('Resposta 1', responder),
            Resposta('Resposta 2', responder),
            Resposta('Resposta 3', responder),
          ], //<Widget>[]
        ), //Column
        //), //Center
      ), //Scaffold
    ); //MaterialApp
  }
}