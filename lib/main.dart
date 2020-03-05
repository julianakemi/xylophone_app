import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int noteNumber, int colorCode) {
    return Expanded(
      child: FlatButton(
        color: Color(colorCode),
        onPressed: () {
          playSound(noteNumber);
        },
      ),
    );
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
              buildKey(1, 0xFFA11C66),
              buildKey(2, 0xFFD4501A),
              buildKey(3, 0xFFF5D002),
              buildKey(4, 0xFF4AA94A),
              buildKey(5, 0xFF016FA4),
              buildKey(6, 0xFF542F71),
              buildKey(7, 0xFF4A456A),
            ],
          ),
        ),
      ),
    );
  }

  XylophoneApp();
}
