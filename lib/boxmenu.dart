import 'package:flutter/material.dart';
import 'package:fluttermap/generalmap.dart';
import 'package:fluttermap/prediction.dart';


class boxmenu extends StatelessWidget {
  const boxmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  MaterialPageRoute(builder: (context) => HtmlViewerApp1()), // Navigate to the AboutPage
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
                    child: Icon(Icons.online_prediction)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,right: 30),
                child: Text("Predictions",style: TextStyle(fontSize: 20),),
              ),
            ],
          )
          ),
        ),
      ),
    );
  }
}
