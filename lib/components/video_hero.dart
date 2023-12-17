import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoHero extends StatefulWidget {
  const VideoHero({super.key});

  @override
  State<VideoHero> createState() => _VideoHeroState();
}

class _VideoHeroState extends State<VideoHero> {
  late VideoPlayerController _controller;
  // late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('web/assets/video/v1.mp4')
      ..initialize().then((_) {
        setState(() {});
        // Ensure the video is played when the application is started
        _controller.play();
        // Ensure the video is played in loop
        _controller.setLooping(true);
      });
  }

  @override
  Widget build(BuildContext context) {
    // Ensure the video auto replays
    return Center(
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(children: [
                  VideoPlayer(_controller),
                  const Positioned(
                      child: Center(
                          child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "France Data",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Atlas des données de France",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )))
                ]),
              )
            : Container());
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }
}
