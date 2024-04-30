
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttermap/boxmenu.dart';
import 'package:fluttermap/drawer.dart';
import 'package:fluttermap/link.dart';
import 'package:fluttermap/report.dart';
import 'package:fluttermap/screen/weather.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(80),
          child:AppBar(
            backgroundColor: Color(0xFF931F1D),
            title: Text('Main Menu',style: TextStyle(fontSize: 30,color: Colors.white),),
            centerTitle: true,


          ),
        ),
        drawer: Drawer1(),
        body: Column(
          children: [
            Row(
              children:[
                boxmenu(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 5, left: 1,right: 5),
                    child: SizedBox(
                      width: 170,
                      height: 120,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF12355B),
                            // shape: StadiumBorder(),

                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Weather()), // Navigate to the AboutPage
                            );
                          }, child:
                      Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10,right: 90),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xFF931F1D),
                                    borderRadius: BorderRadius.circular(100)
                                  //more than 50% of width makes circle
                                ),

                                width: 50,
                                height: 40,

                                child: Icon(Icons.online_prediction)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 50),
                            child: Text("Forecast",style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      )
                      ),
                    ),
                  ),
                ),],
            ),
            Row(
              children:[

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 5, left: 10,right: 1),
                    child: SizedBox(
                      width: 170,
                      height: 120,
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF12355B),
                            // shape: StadiumBorder(),


                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => report1(),), // Navigate to the AboutPage
                            );

                          }, child:
                      Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 2,top: 10,right: 95),
                            child: Container(
                                width: 50,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xFF931F1D),
                                    borderRadius: BorderRadius.circular(100)
                                  //more than 50% of width makes circle
                                ),
                                child: Icon(Icons.report)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text("Report Active Fire ",style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30,bottom: 5, left: 1,right: 5),
                    child: SizedBox(
                      width: 170,
                      height: 120,
                      child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF12355B),
                            // shape: StadiumBorder(),


                          ),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Link1(),), // Navigate to the AboutPage
                            );

                          }, child:
                      Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 5,top: 10,right: 90),
                            child: Container(
                                width: 50,
                                height: 40,
                                decoration: BoxDecoration(
                                    color: Color(0xFF931F1D),
                                    borderRadius: BorderRadius.circular(100)
                                  //more than 50% of width makes circle
                                ),
                                child: Icon(Icons.map)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, right: 50),
                            child: Text("Fire Map",style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      )
                      ),
                    ),
                  ),
                ),],),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 5, left: 10,right: 5),
                child: SizedBox(
                  width: 180,
                  height: 120,
                  child: ElevatedButton(

                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF12355B),
                        // shape: StadiumBorder(),


                      ),
                      onPressed: (){}, child:
                  Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 5,top: 10,right: 110),
                        child: Container(
                            width: 60,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF931F1D),
                                borderRadius: BorderRadius.circular(100)
                              //more than 50% of width makes circle
                            ),
                            child: Icon(Icons.emergency_outlined)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right:50),
                        child: Text("Skin Burn",style: TextStyle(fontSize: 20),),
                      ),
                    ],
                  )
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
