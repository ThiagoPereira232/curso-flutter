import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.red)
      ),
      margin: EdgeInsets.only(top:40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("t1"),
          Text("t2"),
          Text("t3"),
        ],
      ),
    ),
  ));
}
