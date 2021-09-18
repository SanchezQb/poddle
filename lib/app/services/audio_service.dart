import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AudioService {
  late AudioPlayer _player;

  void init() {
    _player = AudioPlayer();
  }

  Future<void> play({required String url}) async {
    await _player.play(url);
  }

  Future<void> pause() async {
    await _player.pause();
  }

  Future<void> resume() async {
    await _player.resume();
  }

  Future<void> stop() async {
    await _player.stop();
  }

  Future<void> seek({Duration? duration}) async {
    await _player.seek(duration ?? const Duration(milliseconds: 1200));
  }

  //  player.onAudioPositionChanged.listen((Duration  p) => {
  //   print('Current position: $p');
  //   setState(() => position = p);
  // });

  // player.onPlayerStateChanged.listen((PlayerState s) => {
  //   print('Current player state: $s');
  //   setState(() => playerState = s);
  // });
}

final audioServiceProvider = Provider((_) => AudioService);
