import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Row(children: <Widget>[
      Text("Texto 1"),
      Text("Texto 2"),
      Text("Texto 3")
    ],),
    //home: Container(color: Colors.white,),
  ));
}
