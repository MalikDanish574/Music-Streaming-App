import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_streaming_app/utils/colors.dart';


class player extends StatefulWidget {
  player({Key? key}) : super(key: key);

  @override
  State<player> createState() => _playerState();
}

class _playerState extends State<player> {
  bool playing = false;

  // at the begining we are not playing any song
  IconData playBtn = Icons.play_arrow;

  // the main state of the play button icon
  late AudioPlayer _player;

  late AudioCache cache;

  Duration position = new Duration();

  Duration musicLength = new Duration();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 45.0,
          color: whitetext,
          onPressed: () {},
          icon: Icon(
            Icons.skip_previous,
          ),
        ),
        IconButton(
          iconSize: 62.0,
          color: whitetext,
          onPressed: () {
            //here we will add the functionality of the play button
            if (!playing) {
              //now let's play the song
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
          color: whitetext,
          onPressed: () {},
          icon: Icon(
            Icons.skip_next,
          ),
        ),
      ],
    ));
  }
}
