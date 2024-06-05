import 'dart:convert';
import 'package:flutter_nasa_apod_ui/models/apod_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _apiKey = 'DEMO_KEY';
  static const String _baseUrl = 'https://api.nasa.gov/planetary/apod';

  Future<APOD> getAPOD() async {
    Uri url = Uri.parse('$_baseUrl?api_key=$_apiKey');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return APOD.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load APOD');
    }
  }
}
