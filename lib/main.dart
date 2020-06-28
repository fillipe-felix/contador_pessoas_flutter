import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    debugShowCheckedModeBanner: false,
    home: Stack(
      children: <Widget>[
        Image.asset(
          "images/background.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoa: 0",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Pode entrar",
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ],
    ),
  ));
}
