import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoprovider extends ChangeNotifier {
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;
  List name = [
    "Video",
    "Audio",
    "Whatsapp video",
    "Download",
    "Instagram",
  ];

  List subname = [
    "3 video",
    "5 video",
    "2 video",
    "4 video",
    "3 video",
  ];

  List videoimg = [
    "assets/images/video1.jpg",
    "assets/images/jkb.jpg",
    "assets/images/company.jpg",
    "assets/images/sakhi.jpg",
  ];
  List video = [
    "assets/video/tabahi.mp4",
    "assets/video/jbk.mp4",
    "assets/video/emi.mp4",
    "assets/video/mast.mp4",

    // "assets/video/company.mp4",
    // "assets/video/Sakhiyan.mp4",
  ];

  void initvideo(int index) {
    videoPlayerController =
        VideoPlayerController.asset("${video[index]}");
    videoPlayerController!.initialize();
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoPlay: true,
        allowFullScreen: true,
        looping: false);
  }

}
