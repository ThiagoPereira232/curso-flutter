import 'package:flutter/material.dart';
import 'dart:math';

import 'Resultado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    List<String> itens = ["cara", "coroa"];
    int numero = Random().nextInt(itens.length);
    String resultado = itens[numero];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(valor: resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
