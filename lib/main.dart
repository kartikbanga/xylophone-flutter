import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded runbutton({Color color, int soundnumber})
  {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: (){
          playSound(soundnumber);
          // player.set
        },
      ),
    );
  }

  void playSound(int soundNumbe)
  {
    final player=AudioCache();
    player.play('note$soundNumbe.wav');
  }
  int soundNumber=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              runbutton(color: Colors.red, soundnumber:1),
              runbutton(color: Colors.orange, soundnumber:2),
              runbutton(color: Colors.yellow, soundnumber:3),
              runbutton(color: Colors.green, soundnumber:4),
              runbutton(color: Colors.blue, soundnumber:5),
              runbutton(color: Colors.indigo, soundnumber:6),
              runbutton(color: Colors.purple, soundnumber:7),

            ],
          ),
        ),
      ),
    );
  }
}
