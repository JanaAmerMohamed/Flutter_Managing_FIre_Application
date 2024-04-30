import 'package:http/http.dart' as http;
import 'dart:convert';

class FireData {
  final double latitude;
  final double longitude;
  final double brightness;

  FireData({
    required this.latitude,
    required this.longitude,
    required this.brightness,
  });

  factory FireData.fromJson(Map<String, dynamic> json) {
    return FireData(
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
      brightness: json['brightness'].toDouble(),
    );
  }
}

Future<List<FireData>> fetchFireData() async {
  final response = await http.get(Uri.parse('<API_URL>')); // Replace with your API URL
  if (response.statusCode == 200) {
    List<dynamic> jsonData = jsonDecode(response.body);
    return jsonData.map((item) => FireData.fromJson(item)).toList();
  } else {
    throw Exception('Failed to fetch fire data');
  }
}