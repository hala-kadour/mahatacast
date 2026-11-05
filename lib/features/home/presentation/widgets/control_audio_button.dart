import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mahatacast/features/home/blocs/audio-cubit/audio_cubit.dart';
import 'package:mahatacast/features/home/blocs/home-bloc/home_bloc.dart';
import 'package:mahatacast/features/home/presentation/pages/rating_page.dart';
import 'package:mahatacast/services/service_fun.dart';

class ControlButton extends StatelessWidget {
  const ControlButton(
      {super.key,
      required this.podcastId,
      required this.currentDuration,
      required this.audioPlayer,
      required this.iconSize,
      required this.iconColor});
  final int podcastId;
  final Duration currentDuration;
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
        } else if (processingState == ProcessingState.completed) {
          context.read<AudioCubit>().addPodcastToListen(
              podcastId, ServiceFunctions.formatTimeForAPI(currentDuration));
          context.read<HomeBloc>().add(GetLatestListenPodcastEvent());
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RatinPage(podcastId: podcastId),
              ));
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
