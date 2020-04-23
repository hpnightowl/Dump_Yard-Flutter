import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GuitarApp());
}

class GuitarApp extends StatelessWidget {

  void cordsound(int cordnumber){
    final player = AudioCache();
    player.play('chord$cordnumber.mp3');
  }

  Expanded cordnumber({Color color,int cordnumber}){
    return  Expanded(
      child: FlatButton(
        onPressed: () {
          cordsound(cordnumber);
        },
        color: color,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                cordnumber(color: Colors.red,cordnumber: 1),
                cordnumber(color: Colors.orange,cordnumber: 2),
                cordnumber(color: Colors.yellow,cordnumber: 3),
                cordnumber(color: Colors.green,cordnumber: 4),
                cordnumber(color: Colors.teal,cordnumber: 5),
                cordnumber(color: Colors.blue,cordnumber: 6),
                cordnumber(color: Colors.purple,cordnumber: 7),
         ],
            )),
      ),
    );;
  }
}
