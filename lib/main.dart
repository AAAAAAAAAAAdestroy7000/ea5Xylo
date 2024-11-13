import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

void playSound(int A) {
  final player = AudioPlayer();
  player.play(AssetSource('note$A.wav'));
}

Color COLOR (int A) {
  if (A==1) {
    return Colors.red;}
  else if (A==2) {
    return Colors.orange;
    }
  else if (A==3) {
    return Colors.yellow;
  }
  else if (A==4) {
    return Colors.green;
  }
  else if (A==5) {
    return Colors.teal;
  }
  else if (A==6) {
    return Colors.blue;
  }
  else if (A==7) {
    return Colors.indigo;
    }
  else {
    return Colors.black;
    }
  }


Expanded keys (int A){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        backgroundColor: COLOR(A),
      ),
      onPressed: (){
        playSound(A);
      },
      child: Container(),
    ),
  );
}



class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              keys(1),
              keys(2),
              keys(3),
              keys(4),
              keys(5),
              keys(6),
              keys(7),
            ],
          ),
        ),
      ),
    );
  }
}