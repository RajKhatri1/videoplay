import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoprovider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  void initvideo() {
    videoPlayerController =
        VideoPlayerController.asset("assets/video/morning.mp4");
    videoPlayerController!.initialize();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: false,
        allowFullScreen: true,
        looping: true);
  }
}
