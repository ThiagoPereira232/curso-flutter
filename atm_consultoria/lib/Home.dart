import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _abrirEmpresa() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("ATM Consultoria"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_empresa.png") ,
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_servico.png") ,
                    )
                  ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_cliente.png") ,
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_contato.png") ,
                    )
                  ]
                ),
              )
            ],
          )
        ));
  }
}
