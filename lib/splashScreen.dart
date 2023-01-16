import 'package:flutter/material.dart';
import 'package:swapbay/button.dart';
import 'package:swapbay/register.dart';
import 'package:video_player/video_player.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/splash.mp4');
    _controller.initialize().then(
      (value) {
        setState(() {});
        _controller.setVolume(0.0);

        playVideo();
      },
    );
  }

  void playVideo() async {
    _controller.play();
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container()),
    );
  }
}
