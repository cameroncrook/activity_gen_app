// lib/api/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/activity.dart';
/**
 * I havent set up the system for accepting multi-variable endpoints, but this makes a basic call with no parameters, so its any activty/price/participats etc
 * I didn't implement it into main, because I am not smart, but I tested it in the screens/test_screens.dart and it is returning the data properly
 * Run from terminal with: dart run lib/screens/test_screen.dart
 */

class ApiService {
  Future<Map<String, dynamic>> fetchData(String endpoint) async {

    // Create complete URL
    final baseUrl = Uri.parse('http://www.boredapi.com/api/');
    final url = baseUrl.resolve(endpoint);
    // Begin call process
    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        // Successfully fetched data
        final decodedResponse = json.decode(response.body) as Map<String, dynamic>;
        return decodedResponse;
      } else {
        // Handle errors
        print('API request failed with status code: ${response.statusCode}');
        throw Exception('Failed to fetch data');
      }
    } catch (error) {
      // Handle network or other errors
      print('Error during API request: $error');
      throw Exception('Failed to fetch data');
    }

  }
}

Future<Activity> getActivity() async {
  final response = await http.get(Uri.parse('https://www.boredapi.com/api/activity'));

  if (response.statusCode == 200) {
    var decodedResponse = jsonDecode(response.body);

    if (decodedResponse  is Map<String, dynamic>) {
      return Activity.fromJson(decodedResponse);
    } else {
      throw Exception('Data is not the correct format');
    }
  } else {
    throw Exception('Failed to load data');
  }
}


