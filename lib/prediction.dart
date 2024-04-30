import 'package:flutter/material.dart';
import 'package:fluttermap/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class HtmlViewerApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
        preferredSize:  Size.fromHeight(80),
    child:AppBar(
    backgroundColor: Color(0xFF931F1D),
    title: Text('Predicition 2023',style: TextStyle(fontSize: 30,color: Colors.white),),
    centerTitle: true,),


    ),
        drawer: Drawer1(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 40,right: 15, top: 100,bottom: 15),
              child: Text('Wildfires predictions for next August 2024, based on old data of 2022 and 2023',style: TextStyle(fontSize: 25,color:Color(0xFF12355B),fontWeight: FontWeight.bold ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF12355B),
                  // shape: StadiumBorder(),

                ),
                onPressed: (){
                  _launchHTMLFile(context);
                },
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 5,top: 10,right: 30,bottom: 5),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFF931F1D),
                              borderRadius: BorderRadius.circular(100)
                            //more than 50% of width makes circle
                          ),

                          width: 50,
                          height: 40,

                          child: Icon(Icons.ads_click)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right:5),
                      child: Text("Click Here",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
        //
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Expanded(
        //       child: Center(
        //          child:
        //          Padding(
        //            padding: const EdgeInsets.symmetric(vertical: 30,),
        //            child: SizedBox(
        //              width: 360,
        //              height: 40,
        //              child: ElevatedButton(
        //                style: ElevatedButton.styleFrom(
        //                  primary: Color(0xFF931F1D),
        //                  shape: StadiumBorder(),
        //
        //                ),
        //
        //                  onPressed: () {
        //                    _launchHTMLFile(context);
        //                  }, child:
        //
        //              Text('Click Here To See The Map',style: TextStyle(fontSize: 20, color: Colors.white),),),
        //            ),
        //          )
        //
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }

  Future<void> _launchHTMLFile(BuildContext context) async {
    const String htmlFileUrl = 'https://drive.google.com/file/d/1hNJaJwk475pFExJuixaW2RLjhKajZ56Y/view?usp=drive_link';
    if (await canLaunch(htmlFileUrl)) {
      await launch(htmlFileUrl);
    } else {
      throw 'Could not launch $htmlFileUrl';
    }
  }
}
