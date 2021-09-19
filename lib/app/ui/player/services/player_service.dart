import 'package:audioplayers/audioplayers.dart';

class PlayerService {
  final AudioPlayer player = AudioPlayer();

  Future<void> play(String url) async {
    await player.play(url);
  }

  Future<void> pause() async {
    await player.pause();
  }

  Future<void> resume() async {
    await player.resume();
  }

  Future<void> stop() async {
    await player.stop();
  }

  Future seek(Duration duration) async {
    await player.seek(duration);
  }
}
