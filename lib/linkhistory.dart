import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Link2 extends StatefulWidget {


  @override
  State<Link2> createState() => _LinkState();
}

class _LinkState extends State<Link2> {
  _launchurl() async{
    const url="https://worldview.earthdata.nasa.gov/?v=-43.55015500926284,3.348174261289202,169.96480832819356,101.3524802734306&z=1&l=Reference_Labels_15m(hidden),Reference_Features_15m(hidden),Coastlines_15m,MODIS_Aqua_Thermal_Anomalies_All,MODIS_Terra_CorrectedReflectance_TrueColor&lg=false&t=2019-10-06-T18%3A21%3A24Z";
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
          title: Text('History Actve Fires',style: TextStyle(fontSize: 30,color: Colors.white),),
          centerTitle: true,


        ),
        body:
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15, top: 100,bottom: 15),
              child: Text('Nasa Space Provides A Website To Inform You Where were The Active Fires in the past Around The World. Please Click Here To See It',style: TextStyle(fontSize: 25,color:Color(0xFF12355B),fontWeight: FontWeight.bold ),),
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
