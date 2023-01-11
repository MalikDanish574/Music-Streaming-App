import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class MusicPlayer extends StatefulWidget {
  MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool playing = false;

  IconData playBtn = Icons.play_arrow;

  late AudioPlayer _player;

  late AudioCache cache;

  Duration position = new Duration();

  Duration musicLength = new Duration();

  Widget slider() {
    return Container(
      width: 300.0,
      child: Slider.adaptive(
          activeColor: Colors.blue[800],
          inactiveColor: Colors.grey[350],
          value: position.inSeconds.toDouble(),
          max: musicLength.inSeconds.toDouble(),
          onChanged: (value) {
            seekToSec(value.toInt());
          }),
    );
  }

  void seekToSec(int sec) {
    Duration newPos = Duration(seconds: sec);
    _player.seek(newPos);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            iconSize: 45.0,
            color: Colors.blue,
            onPressed: () {},
            icon: Icon(
              Icons.skip_previous,
            ),
          ),
          IconButton(
            iconSize: 62.0,
            color: Colors.blue[800],
            onPressed: () {
            
              if (!playing) {
               
                setState(() {
                  playBtn = Icons.pause;
                  playing = true;
                });
              } else {
                _player.pause();
                setState(() {
                  playBtn = Icons.play_arrow;
                  playing = false;
                });
              }
            },
            icon: Icon(
              playBtn,
            ),
          ),
          IconButton(
            iconSize: 45.0,
            color: Colors.blue,
            onPressed: () {},
            icon: Icon(
              Icons.skip_next,
            ),
          ),
        ],
      )),
    );
  }
}
