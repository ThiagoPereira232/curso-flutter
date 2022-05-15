import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado({Key? key, this.valor = ""}) : super(key: key);

  final String valor;

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      //backgroundColor: Color.fromRGBO(255, 204, 128, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/moeda_${widget.valor}.png"),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
