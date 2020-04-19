import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void render(int order) {
    final player = AudioCache();
    player.play('note$order.wav');
  }

  Expanded buildRender(colorr,soundNumber){
   return Expanded(
      child: FlatButton(
        color: colorr,
        onPressed: () {
          render(soundNumber);
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
              buildRender(Colors.red, 1),
              buildRender(Colors.orange, 2),
              buildRender(Colors.yellow, 3),
              buildRender(Colors.lightGreen, 4),
              buildRender(Colors.green, 5),
              buildRender(Colors.blue, 6),
              buildRender(Colors.purple, 7),




            ],
          ),
        ),
      ),
    );
  }
}
