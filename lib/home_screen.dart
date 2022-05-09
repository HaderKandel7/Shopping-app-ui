import 'package:flutter/material.dart';
import 'package:shop/detailed_screen.dart';

// import 'main.dart';
//
// class MyHomePage extends StatefulWidget {
//   // MyHomePage({Key key, this.title}) : super(key: key);
//
// //  final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//   // var _tabController = TabController(length: 3, vsync: this);
//   }
//   // var controllor=TabController(length: 3,vsync:  );
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//         appBar: AppBar(
//           bottom: const TabBar(
//             tabs: <Widget>[
//               Tab(
//                 icon: Icon(Icons.cloud_outlined),
//               ),
//               Tab(
//                 icon: Icon(Icons.beach_access_sharp),
//               ),
//               Tab(
//                 icon: Icon(Icons.brightness_5_sharp),
//               ),
//             ],
//           ),
//           backgroundColor: Colors.white,
//           title: Text(''),
//           elevation: 0,
//           leading: Icon(
//             Icons.arrow_back_outlined,
//             color: Colors.black87,
//           ),
//           actions: [
//             IconButton(
//                 icon: Icon(
//               Icons.search,
//               color: Colors.black87,
//             )),
//             IconButton(
//                 icon: Icon(
//               Icons.shopping_cart,
//               color: Colors.black87,
//             ))
//           ],
//         ),
//         body: TabBarView(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(2.0),
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       // decoration: BoxDecoration(boxShadow: [
//                       //   BoxShadow(
//                       //     color: Colors.white12,
//                       //     offset: Offset(0.0, 1.0), //(x,y)
//                       //     blurRadius: 6.0,
//                       //   ),
//                       //],
//                       // ),
//                       padding:
//                           const EdgeInsets.only(top: 10, left: 16, bottom: 2),
//                       child: Text(
//                         'Woman',
//                         style: TextStyle(fontSize: 30),
//                       ),
//                     ),
//                     GridView.builder(
//                         physics: NeverScrollableScrollPhysics(),
//                         shrinkWrap: true,
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           childAspectRatio: MediaQuery.of(context).size.width /
//                               (MediaQuery.of(context).size.height - 300),
//                         ),
//                         itemCount: l.length,
//                         itemBuilder: (BuildContext context, int index) {
//                           return GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Item(l[index])),
//                               );
//                             },
//                             child: Container(
//                               height: 250,
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Container(
//                                     height: 180,
//                                     child: Card(
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(20.0),
//                                       ),
//                                       color: l[index].color,
//                                       child: Center(
//                                           child: Image.asset(
//                                         l[index].image,
//                                         height: 120,
//                                         width: 120,
//                                       )),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 10.0),
//                                     child: Text(
//                                       '${l[index].title}',
//                                       style: TextStyle(
//                                           fontSize: 20,
//                                           color: Colors.grey[500]),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 10.0),
//                                     child: Text(
//                                       '${l[index].price} \$',
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         }),
//                   ],
//                 ),
//               ),
//             ),
//             Center(
//               child: Text("It's rainy here"),
//             ),
//             Center(
//               child: Text("It's sunny here"),
//             ),
//           ],
//         ));
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Flutter code sample for TabBar
//
// This sample shows the implementation of [TabBar] and [TabBarView] using a [DefaultTabController].
// Each [Tab] corresponds to a child of the [TabBarView] in the order they are written.

import 'package:flutter/material.dart';

import 'main.dart';

/// This is the main application widget.

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
//  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
         title:Padding(
           padding: const EdgeInsets.only( left: 16),
           child: Text(
             'Woman',
             style: TextStyle(fontSize: 20,color: Colors.black87),

           ),
         ),
          elevation: 0,
         // leading:
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

          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black87,
            tabs: <Widget>[
              Tab(
                child: Padding(
                  padding:EdgeInsets.all(8),
                   child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
              Tab(
                child: Padding(
                  padding:EdgeInsets.all(8),
                  child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
              Tab(
                child: Padding(
                  padding:EdgeInsets.all(8),
                  child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
              Tab(
                child:Padding(
                  padding:EdgeInsets.all(8),
                  child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
              Tab(
                child:Padding(
                  padding:EdgeInsets.all(8),
                  child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
              Tab(
                child:Padding(
                  padding:EdgeInsets.all(8),
                child:Text('HandBag', style: TextStyle(color: Colors.black87,),),),
              ),
            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[
            Center(
              child: Padding(
                padding:  EdgeInsets.all(2.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            MediaQuery.of(context).size.width /
                                (MediaQuery.of(context).size.height - 300),
                      ),
                      itemCount: l.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Item(l[index])),
                            );
                          },
                          child: Container(
                            height: 250,
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 180,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0),
                                    ),
                                    color: l[index].color,
                                    child: Center(
                                        child: Image.asset(
                                      l[index].image,
                                      height: 120,
                                      width: 120,
                                    )),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '${l[index].title}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey[500]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    '${l[index].price} \$',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
