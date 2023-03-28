import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:videoplay/screen/videoplayer/provider/videoplayerprovider.dart';

class videoplayer_screen extends StatefulWidget {
  const videoplayer_screen({Key? key}) : super(key: key);

  @override
  State<videoplayer_screen> createState() => _videoplayer_screenState();
}

class _videoplayer_screenState extends State<videoplayer_screen> {
  @override
  videoprovider? videoplayerfalse;
  videoprovider? videoplayertrue;

  @override
  Widget build(BuildContext context) {
    int inde=ModalRoute.of(context)!.settings.arguments as int;
    videoplayerfalse = Provider.of<videoprovider>(context, listen: false);
    videoplayertrue = Provider.of<videoprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              height: 700,
              width: double.infinity,
              child: Chewie(
                controller: videoplayerfalse!.chewieController!,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
