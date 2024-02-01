// lib\screens\test_screen.dart
import 'package:activity_gen/api/api_service.dart';
import 'package:activity_gen/api/models/activity.dart';
import 'package:activity_gen/api/endpoints.dart';

// This was just to test to make sure the API reponse was working right.
// You can run it from the terminal with: dart run lib/screens/test_screen.dart
void main() async {
  // Instantiate ApiService
  final apiService = ApiService();

  try {
    // Make the API call
    final response = await apiService.fetchData(Endpoints.activity);

    // Parse the JSON response
    final activity = Activity.fromJson(response);

    // Display response
    print('API Response:');
    print('Activity: ${activity.activity}');
    print('Type: ${activity.type}');
    print('Participants: ${activity.participants}');
    print('Price: ${activity.price}');
    print('Link: ${activity.link}');
    print('Key: ${activity.key}');
    print('Accessibility: ${activity.accessibility}');
  } catch (error) {
    print('Error during API request: $error');
  }
}
