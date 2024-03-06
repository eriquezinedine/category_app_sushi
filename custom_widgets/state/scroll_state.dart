import 'package:flutter/material.dart';

class ScrollState extends ChangeNotifier{
  int index = 0 ;

  void changeIndex (int value){
    index = value;
    notifyListeners();
  }
}