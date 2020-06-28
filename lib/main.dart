import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    debugShowCheckedModeBanner: false,
    home: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "Pessoa: 0",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          "Pode entrar",
          style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
        )
      ],
    ),
  ));
}
