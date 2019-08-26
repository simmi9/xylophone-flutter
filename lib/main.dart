import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final AudioCache player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
        child: FlatButton(
      onPressed: () {
        playSound(soundNumber);
      },
      color: color,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.green, soundNumber: 1),
              buildKey(color: Colors.yellow, soundNumber: 1),
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.pink, soundNumber: 1),
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 1)
            ],
          ),
        ),
      ),
    );
  }
}
