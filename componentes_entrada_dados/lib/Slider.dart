import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  const EntradaSlider({Key? key}) : super(key: key);

  @override
  State<EntradaSlider> createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {
  double valor = 5;
  String label = "Valor selecionado";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        child: Column(children: [
          Slider(
              value: valor,
              min: 0,
              max: 10,
              label: label,
              divisions: 10,
              activeColor: Colors.red,
              inactiveColor: Colors.black26,
              onChanged: (double novoValor) {
                setState(() {
                  valor = novoValor;
                  label = "Valor selecionado: " + novoValor.toString();
                });
                print("Valor seleciona: $novoValor");
              }),
          ElevatedButton(
              child: Text("Salvar", style: TextStyle(fontSize: 20)),
              onPressed: () {
                print("Valor seleciona botão: $valor");
              }),
        ]),
      ),
    );
  }
}
