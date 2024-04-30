import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fluttermap/model/model.dart';
import 'package:fluttermap/screen/weather.dart';
class api{
  Future<WeatherModel> request() async {
    String url = 'https://api.open-meteo.com/v1/forecast?latitude=37.75&longitude=119.74&current_weather=true&hourly=temperature_2m,relativehumidity_2m,windspeed_10m';
    Response response = await Dio().get(url);
    final parseData = jsonDecode(response.toString());
    final weather=WeatherModel.fromJson(parseData);
    return weather;
  }
}