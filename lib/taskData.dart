import 'package:flutter/material.dart';
// import 'task.dart';
// import 'dart:collection';

class TaskData extends ChangeNotifier{
  String imageValues = "images/7.jpg";
  String textValues = 'Salem Kongu Grand';
  String imageUrls = "https://www.youtube.com/watch?v=SUQLPA9bufE&ab_channel=BestVideoMakers";

  // String imageValues ;
  // String textValues ;
  // String imageUrls ;

  changeValue(String newImageValue,String newTxtValue,String newImageUrl) {
    imageValues = newImageValue;
    textValues = newTxtValue;
    imageUrls = newImageUrl;
    notifyListeners();
  }

}
