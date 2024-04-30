import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MYvideo extends StatefulWidget {
  @override
  State<MYvideo> createState() => _State();
}

class _State extends State<MYvideo> {
  YoutubePlayerController? _controller;

  void initState() {
    super.initState();
    String videoId = extractVideoId('https://youtu.be/3qwOCLCjD2s?si=dw_kFVVTcH1rmn9v');
    _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
      ),
    );
  }

  String extractVideoId(String videoUrl) {
    String videoId = '';
    if (videoUrl.contains('youtu.be')) {
      videoId = videoUrl.split('.be/')[1];
      final ampersandIndex = videoId.indexOf('&');
      if (ampersandIndex != -1) {
        videoId = videoId.substring(0, ampersandIndex);
      }
    } else if (videoUrl.contains('watch')) {
      final uri = Uri.parse(videoUrl);
      videoId = uri.queryParameters['v'] ?? '';
    }
    return videoId;
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller!,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF931F1D),
            title: Text(
              'Fire Safety Video',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Container(
            height: 300, // Set the desired height value
            child: player,
          ),
        );
      },
    );
  }
}