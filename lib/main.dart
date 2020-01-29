import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void soundBack(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded soundButton({Color color, int soundNumber,Text text}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          soundBack(soundNumber);
        },
        color: color,
        child: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            centerTitle: true,
            title: Text("Xylophone"),
            backgroundColor: Colors.deepOrange,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(color: Colors.yellow, soundNumber: 1,text: Text('Sound1')),
              soundButton(color: Colors.grey, soundNumber: 2,text: Text('Sound2')),
              soundButton(color: Colors.blueAccent, soundNumber: 3,text: Text('Sound3')),
              soundButton(color: Colors.greenAccent, soundNumber: 4,text: Text('Sound4')),
              soundButton(color: Colors.pinkAccent, soundNumber: 5,text: Text('Sound5')),
              soundButton(color: Colors.grey, soundNumber: 6,text: Text('Sound6')),
              soundButton(color: Colors.yellowAccent,soundNumber: 7,text: Text('Sound7')),



            ],
          ),
        ),
      ),
    );
  }
}
