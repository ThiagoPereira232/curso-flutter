import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;
  bool _escolhaConfig = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [
          /*Switch(
              value: _escolhaUsuario,
              onChanged: (bool? valor) {
                setState(() {
                  _escolhaUsuario = valor!;
                });
              }),
          Text("Receber notificações"),*/
          SwitchListTile(
              title: Text("Receber notificações"),
              value: _escolhaUsuario,
              onChanged: (bool? valor) {
                setState(() {
                  _escolhaUsuario = valor!;
                });
              }),
          SwitchListTile(
              title: Text("Caregar imagens automaticamente"),
              value: _escolhaConfig,
              onChanged: (bool? valor) {
                setState(() {
                  _escolhaConfig = valor!;
                });
              }),
          ElevatedButton(
              child: Text("Salvar", style: TextStyle(fontSize: 20)),
              onPressed: () {
                if (_escolhaUsuario) {
                  print("Escolha: Receber notificações");
                } else {
                  print("Escolha: não receber notificações");
                }
              }),
        ]),
      ),
    );
  }
}
