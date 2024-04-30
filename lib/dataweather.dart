import 'package:flutter/material.dart';
import 'package:fluttermap/screen/weather.dart';

class weatherdata extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF12355B)),
        primaryColor: Colors.blue
      ),
  home: Weather(),
    );
  }
}

