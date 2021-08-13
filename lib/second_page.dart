import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:studio/nextContainerValues.dart';
import 'package:studio/now_playing_container.dart';
import 'package:studio/taskData.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SecondPage extends StatefulWidget {
  SecondPage({this.imgString,this.imgUrlString});
  final String imgString;
  final String imgUrlString;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  YoutubePlayerController _controller;
  bool firstTime = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = widget.imgUrlString;
    _controller = YoutubePlayerController(
      // initialVideoId: YoutubePlayer.convertUrlToId(Provider.of<TaskData>(context,listen: false).imageUrls),

      initialVideoId: YoutubePlayer.convertUrlToId(data),
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
    return Scaffold(
      backgroundColor: Color.fromRGBO(29, 29, 29, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40.0,
              ),
              Text(
                " Studio 55 ",
                style: GoogleFonts.inter(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.amber,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Now Playing',
                style: GoogleFonts.inter(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              // GestureDetector(
              //   onTap: () {
              //     // Navigator.push(context,
              //     //     MaterialPageRoute(builder: (context) => SecondPage()));
              //   },
              //   child: Stack(children: [
              //     Container(
              //       height: 200.0,
              //       width: 140.0,
              //       decoration: BoxDecoration(
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.white38,
              //             offset: Offset(
              //               -2.5,
              //               -2.5,
              //             ),
              //             blurRadius: 10.0,
              //             spreadRadius: 1.0,
              //           ),
              //           BoxShadow(
              //             color: Colors.black,
              //             offset: Offset(
              //               2.5,
              //               2.5,
              //             ),
              //             blurRadius: 10.0,
              //             spreadRadius: 1.0,
              //           ),
              //         ],
              //         borderRadius: BorderRadius.circular(20.0),
              //         image: DecorationImage(
              //           image: AssetImage("images/7.jpg"),
              //           fit: BoxFit.fill,
              //         ),
              //       ),
              //       child: Align(
              //           alignment: Alignment.bottomCenter,
              //           child: Padding(
              //             padding: EdgeInsets.symmetric(vertical: 15.0),
              //             child: Text(
              //               'Salem Kongu Grand',
              //               style: GoogleFonts.inter(
              //                   fontSize: 10.0,
              //                   color: Colors.white,
              //                   fontWeight: FontWeight.bold),
              //             ),
              //           )),
              //     ),
              //     Container(
              //       height: 200.0,
              //       width: 140.0,
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20.0),
              //           gradient: LinearGradient(
              //               begin: Alignment.topCenter,
              //               end: Alignment.bottomCenter,
              //               colors: [
              //                 Colors.white10,
              //                 Colors.black26,
              //               ],
              //               stops: [
              //                 0.5,
              //                 0.99
              //               ])),
              //     )
              //   ]),
              // ),
              NowPlayingContainer(imgValue: widget.imgString,),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Next',
                style: GoogleFonts.inter(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Wrap(
                spacing: 20.0,
                children: [
                  NextContainerValues(imgValue: "images/7.jpg",txtValue: 'Salem Kongu Grand',imageUrl: "https://www.youtube.com/watch?v=SUQLPA9bufE&ab_channel=BestVideoMakers",),
                  NextContainerValues(imgValue: "images/2.jpg",txtValue: 'KovilPatti Grand Kongu',imageUrl: "https://youtu.be/ObcpRa1Nzi4",),
                  NextContainerValues(imgValue: "images/3.jpg",txtValue: 'Hosur Beautiful Engagement',imageUrl:"https://youtu.be/sJNXJ3F_r-4" ,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
