import 'package:flutter/material.dart';

class CaixaTexto extends StatefulWidget {
  const CaixaTexto({Key? key}) : super(key: key);

  @override
  State<CaixaTexto> createState() => _CaixaTextoState();
}

class _CaixaTextoState extends State<CaixaTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite um valor"),
              enabled: true,
              maxLength: 2,
              /*style: TextStyle(
                fontSize: 25,
                color: Colors.green,
              ),*/
              // obscureText: true,
              /*
              onChanged: (String e) {
                print("Valor digitado: " + e);
              },*/

              onSubmitted: (String text){
                print("Valor digitado: " + text);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
            child: Text("Salvar"),
            onPressed: (){
                print("Valor digitado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}
