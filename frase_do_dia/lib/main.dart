import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeSateful(),
  ));
}

class HomeSateful extends StatefulWidget {
  const HomeSateful({Key? key}) : super(key: key);

  @override
  State<HomeSateful> createState() => _HomeSatefulState();
}

class _HomeSatefulState extends State<HomeSateful> {
  var _texto = "Thiago Pereira";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _texto = "Curso flutter";
                });
              },
              style: ElevatedButton.styleFrom(primary: Colors.amber),
              child: Text("Clique aqui"),
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
    );
  }
}
