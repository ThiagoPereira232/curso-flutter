import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _imagemApp = AssetImage("images/logo.png");
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);
    //double precoGasolina = double.parse(_controllerGasolina.text.replaceAll(",", "."));

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Número inválido, digite número maiores que 0 e utilizando ponto (.)";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com álcool";
        });
      }

      _limparCampos();
    }

  }
  
  void _limparCampos() {
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Álcool ou Gasolina"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image(image: _imagemApp)),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Alcool, ex: 1.59"),
                style: TextStyle(fontSize: 22),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: "Preço Gasolina, ex: 3.59"),
                style: TextStyle(fontSize: 22),
                controller: _controllerGasolina,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    child: Text(
                      "Calcular",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blue, padding: EdgeInsets.all(15)),
                    onPressed: _calcular,
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(_textoResultado,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)))
            ],
          ),
        )));
  }
}
