import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'detailed_screen.dart';
import 'home_screen.dart';

var l =
    List.generate(1, (i) => Data( color:Colors.red[400],price: 150,title:'Hat',image: 'assets/13.png',l_Colors: [Colors.pinkAccent,Colors.redAccent] ), growable: true);

void main() {
  l.add( Data( color:Colors.black12 ,price: 200,title:'Bag',image: 'assets/2.png',l_Colors: [Colors.white38,Colors.black] ));
  l.add( Data( color:Colors.black45 ,price: 150,title:'Sun Glasses',image: 'assets/4.png',l_Colors: [Colors.black45,Colors.amberAccent] ));
  l.add( Data( color:Colors.deepOrange[500] ,price: 300,title:'Bag',image: 'assets/6.png',l_Colors: [Colors.deepOrange,Colors.blue] ));
  l.add( Data( color:Colors.red[400] ,price: 350,title:'Bag',image: 'assets/9.png',l_Colors: [Colors.red,Colors.teal] ));
  l.add( Data( color:Color(0xFFF8D9B4) ,price: 500,title:'Jacket',image: 'assets/7.png',l_Colors: [Color(0xFFFAE28B) ,Color(0xFF091C4B) ] ));
  l.add( Data( color:Color(0xFF3C7FB6) ,price: 150,title:'Shoes',image: 'assets/14.png',l_Colors: [Color(0xFF3C7FB6),Colors.purple] ));
  // l.add( Data( color:Colors. ,price: 150,title:'',image: 'assets/.png',l_Colors: [Colors.,Colors.] ));
  // l.add( Data( color:Colors. ,price: 150,title:'',image: 'assets/.png',l_Colors: [Colors.,Colors.] ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}


