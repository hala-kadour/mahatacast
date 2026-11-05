import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class ControlButtonForFile extends StatelessWidget {
  const ControlButtonForFile(
      {super.key,
      required this.audioPlayer,
      required this.iconSize,
      required this.iconColor});
  final AudioPlayer audioPlayer;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: audioPlayer.playerStateStream,
      builder: (context, snapshot) {
        final playerState = snapshot.data;
        final processingState = playerState?.processingState;
        final playing = playerState?.playing;
        if (!(playing ?? false)) {
          return GestureDetector(
            onTap: audioPlayer.play,
            child: Icon(
              Icons.play_arrow_rounded,
              size: iconSize,
              color: iconColor,
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          return GestureDetector(
            onTap: audioPlayer.pause,
            child: Icon(
              Icons.pause_rounded,
              size: iconSize,
              color: iconColor,
            ),
          );
        }
        return GestureDetector(
          onTap: audioPlayer.play,
          child: Icon(
            Icons.play_arrow_rounded,
            size: iconSize,
            color: iconColor,
          ),
        );
      },
    );
  }
}
