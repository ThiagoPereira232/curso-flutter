import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton({ Key? key }) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {

  String? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(children: [
          // Text("Masculino"),
          // Radio(
          //   value: "m", 
          //   groupValue: _escolhaUsuario, 
          //   onChanged: (String? escolha){
          //     setState(() {
          //       _escolhaUsuario = escolha!;
          //     });
          //     print("resulta $escolha");
          //   }
          // ),
          // Text("Feminino"),
          // Radio(
          //   value: "f", 
          //   groupValue: _escolhaUsuario, 
          //   onChanged: (String? escolha){
          //     setState(() {
          //       _escolhaUsuario = escolha!;
          //     });
          //     print("resulta $escolha");
          //   }
          // )

          RadioListTile(
            title: Text("Masculino"),
            value: "m", 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha!;
              });
            }
          ),
          RadioListTile(
            title: Text("Feminino"),
            value: "f", 
            groupValue: _escolhaUsuario, 
            onChanged: (String? escolha){
              setState(() {
                _escolhaUsuario = escolha!;
              });
            }
          ),
          ElevatedButton(
            child: Text("Salvar", style: TextStyle(fontSize: 20)),
            onPressed: (){
              print("resultado: $_escolhaUsuario");
            }
          ),
        ],         
        
        ),
      ),
    );
  }
}