import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:studio/taskData.dart';

class NowPlayingContainer extends StatefulWidget {
  NowPlayingContainer({this.imgValue,this.txtValue});
  final String imgValue;
  final String txtValue;

  @override
  _NowPlayingContainerState createState() => _NowPlayingContainerState();
}

class _NowPlayingContainerState extends State<NowPlayingContainer> {



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (context) => SecondPage()));
      },
      child: Stack(children: [
        Container(
          height: 200.0,
          width: 140.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white38,
                offset: Offset(
                  -2.5,
                  -2.5,
                ),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
              BoxShadow(
                color: Colors.black,
                offset: Offset(
                  2.5,
                  2.5,
                ),
                blurRadius: 10.0,
                spreadRadius: 1.0,
              ),
            ],
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: AssetImage(Provider.of<TaskData>(context).imageValues),
              fit: BoxFit.fill,
            ),
          ),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  Provider.of<TaskData>(context).textValues,
                  style: GoogleFonts.inter(
                      fontSize: 10.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Container(
          height: 200.0,
          width: 140.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white10,
                    Colors.black26,
                  ],
                  stops: [
                    0.5,
                    0.99
                  ])),
        )
      ]),
    );
  }
}
