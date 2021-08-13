import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:studio/now_playing_container.dart';
// import 'package:studio/second_page.dart';
import 'package:studio/taskData.dart';
import 'package:provider/provider.dart';

class NextContainerValues extends StatefulWidget {
  NextContainerValues({this.txtValue,this.imgValue,this.imageUrl});
  final String imgValue;
  final String txtValue;
  final String imageUrl;


  @override
  _NextContainerValuesState createState() => _NextContainerValuesState();
}

class _NextContainerValuesState extends State<NextContainerValues> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Provider.of<TaskData>(context,listen: false).changeValue(widget.imgValue,widget.txtValue,widget.imageUrl);
      },
      child: Stack(children: [
        Container(
          height: 160.0,
          width: 110.0,
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
              image: AssetImage(widget.imgValue),
              fit: BoxFit.fill,
            ),
          ),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  widget.txtValue,
                  style: GoogleFonts.inter(
                      fontSize: 6.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Container(
          height: 160.0,
          width: 110.0,
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
