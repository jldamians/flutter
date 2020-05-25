import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: PianoPage(),
        ),
      ),
    );
  }
}

class PianoPage extends StatefulWidget {
  @override
  _PianoPageState createState() => _PianoPageState();
}

class _PianoPageState extends State<PianoPage> {
  AudioCache audioCache = new AudioCache();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.red,
              onPressed: () {
                audioCache.play('note1.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.orange,
              onPressed: () {
                audioCache.play('note2.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.yellow,
              onPressed: () {
                audioCache.play('note3.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.green,
              onPressed: () {
                audioCache.play('note4.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.blueGrey,
              onPressed: () {
                audioCache.play('note5.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.blue,
              onPressed: () {
                audioCache.play('note6.wav');
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Row(),
              color: Colors.purple,
              onPressed: () {
                audioCache.play('note7.wav');
              },
            ),
          ),
        ],
      ),
    );
  }
}
