import 'package:flutter/material.dart';
import 'package:fluttermap/drawer.dart';
import 'package:fluttermap/main.dart';
import 'package:fluttermap/map.dart';

class report1 extends StatelessWidget {
  String dropdownValue = 'California';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF931F1D),
        title: Text('Report For Active Fires',style: TextStyle(fontSize: 27,color: Colors.white),),
        centerTitle: true,


      ),
      drawer: Drawer1(),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 80, left: 8,right: 8,bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Name',
                  prefixIcon: Icon(Icons.perm_identity),
                  suffixIcon: Icon(Icons.info_outline_rounded),
                  label: Text('Name'),
                  border: OutlineInputBorder(),


                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 8,right: 8,bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your Naional ID',
                  prefixIcon: Icon(Icons.perm_identity),
                  suffixIcon: Icon(Icons.lock),
                  label: Text('National ID'),
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
                  label: Text('Select The State'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 5, top:50,left: 20, right: 20),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Myapp(dropdownValue: dropdownValue,),), // Navigate to the AboutPage
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.ads_click),
                      Padding(
                        padding: const EdgeInsets.only(left: 100,top: 10,bottom: 10),
                        child: Text('Submit',style: (TextStyle(fontSize: 25)),),
                      ),

                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

}


