import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplay/screen/videoplayer/provider/videoplayerprovider.dart';
import 'package:videoplay/screen/videoplayer/view/videoplayer_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => videoprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => videoplayer_screen(),
        },
      ),
    )
  );
}


