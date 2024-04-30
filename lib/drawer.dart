
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fluttermap/AboutPage.dart';
import 'package:fluttermap/generalmap.dart';
import 'package:fluttermap/linkhistory.dart';
import 'package:fluttermap/main.dart';
import 'package:fluttermap/map.dart';
import 'package:fluttermap/side_menu.dart';
import 'package:fluttermap/youtube.dart';
class Drawer1 extends StatelessWidget {

final number='+911';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Color(0xFF484F62), //<-- SEE HERe
        child: ListView(
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Color(0xFF931F1D),
              child: Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(0xFF12355B),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('lib/image/firefighter-hat-vector-4115192.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 35),
                    child: Text('FIRE-X',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ],
              ),


            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:40,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF12355B),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu()), // Navigate to the AboutPage
                    );
                  }, child:
              Row(
                children: [
                  Icon(Icons.home),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Home'),
                  ),

                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:2,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF12355B),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GeneralMap()), // Navigate to the AboutPage
                    );
                  }, child:
              Row(
                children: [
                  Icon(Icons.location_on),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Maps'),
                  ),

                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:2,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Link2()), // Navigate to the AboutPage
                    );
                  }, child:
              Row(
                children: [
                  Icon(Icons.history),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('History'),
                  ),

                ],
              )),
            ),
            Divider(
              height: 35,
              thickness: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:20,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () async{
                    await FlutterPhoneDirectCaller.callNumber(number);
                  },
                  child: Row(
                children: [
                  Icon(Icons.emergency),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Emergency Contact'),
                  ),

                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:5,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MYvideo()), // Navigate to the AboutPage
                    );
                  }, child:
              Row(
                children: [
                  Icon(Icons.help),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Help'),
                  ),

                ],
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:2,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()), // Navigate to the AboutPage
                    );
                  }, child:
              Row(
                children: [
                  Icon(Icons.info_outline_rounded),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('About'),
                  ),

                ],
              )),
            ),


            //drawer stuffs
          ],
        ),
      ),
    );
  }
}
