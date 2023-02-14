import 'package:flutter/material.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  void playSound(int soundNumber) {
    final AudioCache player = AudioCache();
    // player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
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
              buildKey(color: Colors.red, soundNumber: 1),
              const SizedBox(
                height: 10,
              ),
              buildKey(color: Colors.orange, soundNumber: 2),
              const SizedBox(
                height: 10,
              ),
              buildKey(color: Colors.yellow, soundNumber: 3),
              const SizedBox(
                height: 10,
              ),
              buildKey(color: Colors.green, soundNumber: 4),
              const SizedBox(
                height: 10,
              ),
              buildKey(color: Colors.teal, soundNumber: 5),
              const SizedBox(
                height: 10,
              ),
              buildKey(color: Colors.blue, soundNumber: 6),
              // const SizedBox(
              //   height: 10,
              // ),
              buildKey(color: Colors.purple, soundNumber: 7),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.copyright_rounded,
                    color: Colors.white,
                  ),
                  Text(
                    'Ansam_cd',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AudioCache {}
