import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.red)
      ),
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      // margin: EdgeInsets.only(left: 50, top: 50),
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          Text("t1"),
          
          Padding(
            padding: EdgeInsets.all(30),
            child: Text("t2"),
          ),

          Text("t3"),
          /*Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rhoncus, lectus vel congue viverra",
            textAlign: TextAlign.justify,
          )*/
        ],
      ),
    ),
  ));
}
