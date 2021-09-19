import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podcast_app/app/ui/player/models/episode.dart';

abstract class AudioPlayerState {
  const AudioPlayerState();
}

class Initial extends AudioPlayerState {
  const Initial();
}

class Playing extends AudioPlayerState {
  final Episode episode;

  Playing(this.episode);
}

class AudioPlayerStateNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerStateNotifier(AudioPlayerState state) : super(state);
}
