
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermap/drawer.dart';
import 'package:fluttermap/html.dart';
import 'package:fluttermap/prediction.dart';
import 'package:fluttermap/side_menu.dart';

void main(){

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      home: LoginPage(),
    );
  }
}


class LoginPage extends StatelessWidget {
  String dropdownValue = 'California';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(80),
        child:AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF931F1D),
          flexibleSpace: Center(

            child: Container(
              width: 300,
              decoration: BoxDecoration(

                  shape: BoxShape.rectangle,

                  image: DecorationImage(

                      image: AssetImage('lib/image/firex.jpg'),

                      fit: BoxFit.fill

                  )

              ),

            ),

          ),



        ),
      ),
      drawer: Drawer1(),
      body:SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: CircleAvatar(
                  radius: 58,
                  backgroundColor: Color(0xFF12355B),
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('lib/image/firefighter-hat-vector-4115192.jpg'),
                  ),
                ),
              ),

            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              child: TextField(

                decoration: InputDecoration(

                  hintText: 'Enter your Email!',
                  prefixIcon: Icon(Icons.email),
                  label: Text('Email'),
                  border: OutlineInputBorder(),



                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Password!',
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.lock),
                  label: Text('Password'),
                  border: OutlineInputBorder(),


                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              child: DropdownButtonFormField<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  dropdownValue = newValue!;
                },
                items: <String>['California', 'Washington', 'New York']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  hintText: 'Select an option',
                  prefixIcon: Icon(Icons.arrow_drop_down),
                  label: Text('Dropdown'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30,),
              child: SizedBox(
                width: 360,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF931F1D),
                    shape: StadiumBorder(),

                  ),

                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => menu()), // Navigate to the AboutPage
                    );
                  }, child:

                Text('Login',style: TextStyle(fontSize: 20, color: Colors.white),),),
              ),
            )
          ],
        ),
      ) ,

    );

  }
}
