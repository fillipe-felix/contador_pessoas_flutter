import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _infoText = "Local vazio!";


  void _changePeople(int value) {
    setState(() {

      _people += value;

      if(_people < 0 || _people == 0){
        _infoText = "Local vazio";
        _people = 0;
      } else if(_people <= 10){
        _infoText = "Pode entrar";
      } else {
        _infoText = "Local lotado";
        _people = 11;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
              "Pessoa: $_people",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      _changePeople(1);
                    },
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      _changePeople(-1);
                    },
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              _infoText,
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
            )
          ],
        ),
      ],
    );
  }
}
