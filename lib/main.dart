import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplay/screen/homescreen/provider/homeprovider.dart';
import 'package:videoplay/screen/homescreen/view/Home_screen.dart';
import 'package:videoplay/screen/videoplayer/provider/videoplayerprovider.dart';
import 'package:videoplay/screen/videoplayer/view/videoplayer_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => videoprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => Homeprovider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Home_screen(),
          'video' : (context) => videoplayer_screen(),
        },
      ),
    )
  );
}


