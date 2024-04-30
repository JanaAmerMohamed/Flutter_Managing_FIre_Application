import 'package:flutter/material.dart';
import 'package:fluttermap/client/client.dart';
import 'package:fluttermap/drawer.dart';
import 'package:fluttermap/model/model.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  WeatherModel? weatherModel;
  List<Widget>? hourlyCast;
  List<dynamic>? hourlyTemp;
  List<dynamic>? hourlyDate;
  List<Widget>? hourlyCastTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Color(0xFF931F1D),
        title: Text(
          'Forecast',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: Drawer1(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Current Weather',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Icon(
                  Icons.sunny,
                  color: Colors.amber,
                  size: 64,
                ),
                SizedBox(height: 20),
                Text(
                  '${weatherModel?.currentweather["temperature"] != null ? weatherModel?.currentweather["temperature"] : 0} C',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF12355B),
                    shape: StadiumBorder(),
                  ),
                  onPressed: () async {
                    weatherModel = await api().request();
                    hourlyTemp = weatherModel?.hourly["temperature_2m"];
                    hourlyDate = weatherModel?.hourly["time"];
                    hourlyCast = hourlyTemp?.map((e) => Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Container(
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
                          children: [
                            Icon(
                              Icons.thermostat,
                              color: Colors.deepOrange,
                            ),
                            Text(
                              "$e C",
                              style: TextStyle(
                                color: Color(0xFF12355B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList();
                    hourlyCastTime = hourlyDate?.map((e) => Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                      ),
                      child: Container(
                        color: Colors.white70,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center, // Center horizontally
                          children: [
                            Icon(
                              Icons.timelapse,
                              color: Colors.deepOrange,
                            ),
                            Text(
                              "$e",
                              style: TextStyle(
                                color: Color(0xFF12355B),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )).toList();
                    setState(() {});
                  },
                  child: Text(
                    'Get Data',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  color: Colors.white,
                  width: 600,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 200, // Set a fixed width for the container
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                            children: hourlyCastTime == null
                                ? [Text("Empty")]
                                : hourlyCastTime!,
                          ),
                        ),
                        Container(
                          width: 200, // Set a fixed width for the container
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center, // Center vertically
                            children: hourlyCast == null
                                ? [Text("Empty")]
                                : hourlyCast!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
