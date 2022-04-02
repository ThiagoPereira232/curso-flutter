import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Desistir é para os fracos, ideal é nem tentar",
    "Vai ter muita gente dizendo que não vai dar certo. Acredite neles",
    "A cada dia uma nova derrota, a cada derrota uma nova tentativa, a cada tentativa mais uma derrota",
    "Nunca se esqueça que você é limitado",
    "Vai ser difícil, vai ser cansativo, vai levar tempo e não vai valer a pena",
    "O mérito da derrota é todo seu, orgulhe-se",
    "Não deixe para fazer amanhã o que pode ser feito depois de amanhã",
    "Nada é tão ruim que não possa piorar",
    "Não deixe que uma frase motivacional melhore seu dia de merda",
    "É só uma fase ruim, vai piorar muito"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do Dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                ElevatedButton(
                  onPressed: _gerarFrase,
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                )
              ],
            ),
          ),
        ));
  }
}
