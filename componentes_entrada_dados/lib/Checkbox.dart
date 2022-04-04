import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  const EntradaCheckBox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<EntradaCheckBox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [
          // Text("Comida Brasileira"),
          // Checkbox(
          //   value: _estaSelecionado,
          //   onChanged: (bool? valor) {
          //     setState(() {
          //       _estaSelecionado = valor!;
          //     });
          //     print("Checkbox" + valor.toString());
          //   },
          // )

          CheckboxListTile(
            title: Text("Comida Brasileira"),
            subtitle: Text("A melhor comida"),
            activeColor: Colors.red,
            //selected: true,
            //secondary: Icon(Icons.add_box),
            value: _comidaBrasileira,
            onChanged: (bool? valor) {
              setState(() {
                _comidaBrasileira = valor!;
              });
            }
          ),
          CheckboxListTile(
            title: Text("Comida Mexicana"),
            subtitle: Text("A melhor comida"),
            activeColor: Colors.red,
            //selected: true,
            //secondary: Icon(Icons.add_box),
              value: _comidaMexicana,
              onChanged: (bool? valor) {
                setState(() {
                  _comidaMexicana = valor!;
                });
            }
          ),
          ElevatedButton(
            child: Text("Salvar", style: TextStyle(fontSize: 20)),
            onPressed: (){
              print("Comida basileira $_comidaBrasileira\n Comida MExicana $_comidaMexicana");
            }
          ),           
        ]),
      ),
    );
  }
}
