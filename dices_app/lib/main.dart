import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Mis Dados',
          ),
        ),
        backgroundColor: Colors.red,
        body: DicesPage(),
      ),
    );
  }
}

class DicesPage extends StatefulWidget {
  @override
  _DicesPageState createState() => _DicesPageState();
}

class _DicesPageState extends State<DicesPage> {
  int leftDice = 1;
  int rightDice = 6;

  int getRandomValue() {
    Random rnd;
    int min, max, value;

    min = 1;
    max = 6;
    rnd = new Random();

    value = min + rnd.nextInt(max - min);

    return value;
  }

  void changeDicesValue() {
    setState(() {
      leftDice = getRandomValue();
      rightDice = getRandomValue();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: changeDicesValue,
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: changeDicesValue,
              child: Image.asset(
                'images/dice$rightDice.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
