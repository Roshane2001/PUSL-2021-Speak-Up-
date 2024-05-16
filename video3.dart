import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';


class video3 extends StatelessWidget {
  const video3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Video Player',
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        body: VideoPlayerScreen(),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;
  double _playbackSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('assets/video3.mp4');
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      looping: true,
      aspectRatio: 16 / 9, // Adjust aspect ratio as needed
      allowFullScreen: true,
      fullScreenByDefault: true, // Set to true to make it fullscreen by default
      showControls: true, // Show controls in fullscreen mode
    );
    _videoPlayerController.setPlaybackSpeed(_playbackSpeed); // Set initial playback speed
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Chewie(controller: _chewieController),
          SizedBox(height: 40),
          Text('Playback Speed: $_playbackSpeed'),
          Slider(
            value: _playbackSpeed,
            min: 0.5,
            max: 2.0,
            divisions: 15,
            onChanged: (value) {
              setState(() {
                _playbackSpeed = value;
              });
              _videoPlayerController.setPlaybackSpeed(value);
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _videoPlayerController.dispose();
    _chewieController.dispose();
  }
}
