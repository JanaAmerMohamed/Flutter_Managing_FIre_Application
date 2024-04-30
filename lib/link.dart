import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Link1 extends StatefulWidget {


  @override
  State<Link1> createState() => _LinkState();
}

class _LinkState extends State<Link1> {
  _launchurl() async{
    const url="https://firms.modaps.eosdis.nasa.gov/map/#d:today;@22.4,4.3,3.0z";
    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw "couls not launch it ";
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF931F1D),
        title: Text('Live Active Fire',style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,


      ),
       body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15, top: 100,bottom: 15),
              child: Text('Nasa Space Provides A Website To Inform You Where Are The Active Fires Around The World. Please Click Here To See It',style: TextStyle(fontSize: 25,color:Color(0xFF12355B),fontWeight: FontWeight.bold ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 60,horizontal: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF12355B),
                  // shape: StadiumBorder(),

                ),
                onPressed: (){
                  _launchurl();
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

    );
  }
}
