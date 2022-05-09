import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'data.dart';

class Item extends StatelessWidget {
  Data item ;

  Item(this.item);
///////////////////Color(0xFF3C7FB6)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: item.color,
        title: Text(''),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
            Icons.search,
            color: Colors.black87,
          )),
          IconButton(
              icon: Icon(
            Icons.shopping_cart,
            color: Colors.black87,
          ))
        ],
      ),
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Column(
            //alignment: Alignment.bottomCenter,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: double.infinity,
                  color: item.color,
                  child: Text(
                    '${item.title}',
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: item.color,
                  //   padding: EdgeInsets.only(8),
                  width: double.infinity,
                  child: Card(
                    //margin: ED,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 60.0, left: 10, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Color',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:16.0,top: 2),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: item.l_Colors[0],
                                        ),
                                        SizedBox(width: 10,),
                                        CircleAvatar(
                                          radius: 7,
                                          backgroundColor: item.l_Colors[1],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 30,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Size',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:16.0),
                                    child: Text(
                                      '12 Cm',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 40,),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(" bla bla class ColorConstants {static const kPrimaryColor = Color(0xFF394497);static const kSecondaryColor = Color(0xFF444FAB);}",
                           style: TextStyle(fontSize: 15),),
                         ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: IconButton(icon: Icon(Icons.add),onPressed: (){}, ),
                              ),
                              SizedBox(width: 10,),
                              Text('1', style: TextStyle(fontSize: 20),),
                              SizedBox(width: 10,),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: IconButton(icon: Icon(Icons.remove),onPressed: (){}, ),
                              ),
                            ],
                          ),
                          SizedBox(height: 70,),
                          Row(
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: IconButton(icon: Icon(Icons.shopping_cart, size: 20,color:item.color,),onPressed: (){}, ),
                              ),
                              Expanded(child:
                              Card(
                                color:item.color,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton(child: Text('Buy',style: TextStyle( fontSize: 20,color: Colors.white,)),onPressed: (){}, ),
                              ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.only(top: 90),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30, bottom: 10),
                        child: Text(
                          'price',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      //SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 30),
                        child: Text(
                          '${item.price} \$',
                          style: TextStyle(color: Colors.white, fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Image.asset(
                    '${item.image}',
                    height: 250,
                    width: 220,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
