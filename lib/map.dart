import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttermap/drawer.dart';
import 'package:latlong2/latlong.dart';

class Myapp extends StatefulWidget {
  final String dropdownValue;
  const Myapp({Key? key, required this.dropdownValue}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState(dropdownValue: dropdownValue);
}

class _MyappState extends State<Myapp> {
  final String dropdownValue;
  double latlng1 =0.0;
  double latlng2 = 0.0;

  _MyappState({required this.dropdownValue}) {
    if (dropdownValue == 'California') {
      latlng1 = 36.7783;
      latlng2 = -119.4179;
    } else if (dropdownValue == 'Washington') {
      latlng1 = 38.9072;
      latlng2 = -77.0369;
    } else if (dropdownValue == 'New York') {
      latlng1 = 40.7128;
      latlng2 = -74.0060;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.ltr,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF931F1D),
            title: Row(
              children: [
                Text(
                  'Location Of $dropdownValue',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          drawer: Drawer1(),
          body: Center(
            child: Container(
              child: Column(
                children: [
                  Flexible(
                    child: FlutterMap(
                      options: MapOptions(
                        center: LatLng(latlng1, latlng2),
                        zoom: 5,
                      ),
                      layers: [
                        TileLayerOptions(
                          urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                          subdomains: ['a', 'b', 'c'],
                        ),
                        MarkerLayerOptions(
                          markers: [
                            Marker(
                              point: LatLng(latlng1, latlng2),
                              builder: (ctx) => Icon(
                                Icons.fireplace_outlined,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}