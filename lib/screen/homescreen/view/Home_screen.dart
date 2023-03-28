import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:videoplay/screen/homescreen/provider/homeprovider.dart';
import 'package:videoplay/screen/videoplayer/provider/videoplayerprovider.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  videoprovider? truepro;
  videoprovider? falsepro;

  Homeprovider? trueprovider;
  Homeprovider? falseprovider;
  @override
  Widget build(BuildContext context) {
    truepro = Provider.of<videoprovider>(context,listen: true);
    falsepro = Provider.of<videoprovider>(context,listen: false);
    trueprovider = Provider.of<Homeprovider>(context,listen: true);
    falseprovider = Provider.of<Homeprovider>(context,listen: false);
    return SafeArea(child: Scaffold(
        body:ListView.builder(itemCount: falseprovider!.name.length,itemBuilder: (context, index) {
          return InkWell(onTap: () {
            Provider.of<videoprovider>(context,listen: false).initvideo(index);
            Navigator.pushNamed(context, 'video',arguments: index);
          },child: videos(index));
        },)
    ),);
  }
  Widget videos(int index)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset("${falsepro!.videoimg[index]}"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: AssetImage("${falsepro!.videoimg[index]}"),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${falseprovider!.title[index]}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    Text("${falseprovider!.subtitle[index]}",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "${falseprovider!.name[index]}",
                      style: TextStyle(color: Colors.black54, fontSize: 11),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
