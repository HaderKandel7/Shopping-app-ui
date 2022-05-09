import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data {
  String title;
  String image;
  int price;
  Color color;
  List<Color> l_Colors=[];

  Data({@required this.title, @required this.image, @required this.price, @required this.color ,@required this.l_Colors});
}
