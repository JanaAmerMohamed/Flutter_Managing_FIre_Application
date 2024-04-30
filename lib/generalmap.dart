import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttermap/drawer.dart';
import 'package:latlong2/latlong.dart';

class GeneralMap extends StatefulWidget {


  @override
  State<GeneralMap> createState() => _MyappState();
}

class _MyappState extends State<GeneralMap> {


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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'General Map',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
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
                        center: LatLng(36.7783, -119.4179),
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
                              point: LatLng(36.7783, -119.4179),
                              builder: (ctx) => Icon(
                                Icons.pin_drop,
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