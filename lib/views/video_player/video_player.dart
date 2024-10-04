import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class NetflixVideoPlayer extends StatefulWidget {
  @override
  _NetflixVideoPlayerState createState() => _NetflixVideoPlayerState();
}

class _NetflixVideoPlayerState extends State<NetflixVideoPlayer> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;
  bool _showControls = true;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.asset(
      'assets/images/Netflix Intro (1080p) (Download).mp4',
    )..initialize().then((_) {
        setState(() {
          _isPlaying = true;
          _controller.play();
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
      _isPlaying ? _controller.play() : _controller.pause();
    });
  }

  void _rewind() {
    final currentPosition = _controller.value.position;
    final rewindPosition = currentPosition - const Duration(seconds: 10);
    _controller.seekTo(rewindPosition);
  }

  void _fastForward() {
    final currentPosition = _controller.value.position;
    final forwardPosition = currentPosition + const Duration(seconds: 10);
    _controller.seekTo(forwardPosition);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: _controller.value.isInitialized
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _showControls = !_showControls;
                        });
                      },
                      child: AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      ),
                    )
                  : const CircularProgressIndicator(),
            ),
            if (_showControls) ...[
              Positioned(
                bottom: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.replay_10,
                        color: Colors.white,
                      ),
                      onPressed: _rewind,
                    ),
                    IconButton(
                      iconSize: 60,
                      icon: Icon(
                        _isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: _togglePlayPause,
                    ),
                    IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.forward_10,
                        color: Colors.white,
                      ),
                      onPressed: _fastForward,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Column(
                  children: [
                    VideoProgressIndicator(
                      _controller,
                      allowScrubbing: true,
                      colors: VideoProgressColors(
                        playedColor: Colors.red,
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _printDuration(_controller.value.position),
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          _printDuration(_controller.value.duration),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
