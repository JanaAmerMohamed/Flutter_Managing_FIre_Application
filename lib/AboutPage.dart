
import 'package:flutter/material.dart';
import 'package:fluttermap/drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(80),
          child:AppBar(
            backgroundColor: Color(0xFF931F1D),
            title: Text('About',style: TextStyle(fontSize: 30,color: Colors.white),),
            centerTitle: true,


          ),
        ),
        drawer: Drawer1(),
        body: SingleChildScrollView(
          child: Column(
              children: [
                Image.asset(
                  'lib/image/pexels-pixabay-69934.jpg', // Replace with the actual path to your image file
                  width: 800,
                  height: 263,
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("Welcome to our app, designed to address the pressing issue of wildfires using cutting-edge technology. With the power of machine learning and deep learning, we aim to predict future wildfires and assess the degree of skin burn caused by these devastating events.",style: TextStyle(color: Color(0xFF12355B),fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("Our app offers a comprehensive solution to combat wildfires by empowering users to actively participate in fire prevention and reporting. By simply pressing the report button, users can contribute valuable information about active fires, enabling us to gather critical data for predicting and managing future incidents.",style: TextStyle(color: Color(0xFF12355B),fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("We understand the urgency of wildfires, which is why we have included emergency numbers within the app. These numbers provide immediate access to local authorities, ensuring swift response and assistance during fire emergencies.", style: TextStyle(color: Color(0xFF12355B),fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("To keep users informed and aware, our app features an interactive fire map that displays both active wildfires and predicted ones. This map serves as a visual representation of the fire situation, helping users stay informed about potential risks and take necessary precautions.", style: TextStyle(color:Color(0xFF12355B),fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
                  child: Text("We are dedicated to combating wildfires and their devastating impact on communities and the environment. By leveraging modern technologies, we strive to create a safer and more proactive approach to fire prevention. Join us in our mission to protect lives, property, and nature from the destructive force of wildfires.", style: TextStyle(color: Color(0xFF12355B),fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ]
          ),

        ),
      ) ,
    );
  }
}
