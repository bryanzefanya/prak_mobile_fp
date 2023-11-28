import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiClient {
  static Future<Map<String, dynamic>> getList() async {
    final String baseUrl = 'https://mapi.mobilelegends.com/hero/list';
    final Uri uri = Uri.parse(baseUrl);

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch forecast data');
    }
  }

  static Future<Map<String, dynamic>> getDetail(String idHero) async {
    final String baseUrl = 'https://mapi.mobilelegends.com/hero/detail';
    final Uri uri = Uri.parse('$baseUrl?id=$idHero');

    final response = await http.get(uri);

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data;
    } else {
      throw Exception('Failed to fetch forecast data');
    }
  }

}
