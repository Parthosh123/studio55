import 'package:flutter/material.dart';

class ImageView extends StatefulWidget {
 ImageView({this.value});
 String value;

  @override
  _ImageViewState createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height* 1.0,
        width: width * 1.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.value),
            fit: BoxFit.fitHeight,

          )
        ),
      ),
    );
  }
}
