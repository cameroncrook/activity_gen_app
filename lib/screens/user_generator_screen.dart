import 'dart:js_interop';

import 'package:flutter/material.dart';
import '../api/api_service.dart';
import '../api/models/activity.dart';
import '../widgets/activity_card.dart';

class UserGeneratorScreen extends StatefulWidget {
  const UserGeneratorScreen({
    Key? key,
    required this.inputs,
  }) : super(key: key);

  final Map inputs;

  @override
  State<UserGeneratorScreen> createState() => _UserGeneratorScreenState();
}

class _UserGeneratorScreenState extends State<UserGeneratorScreen> {
  List<ActivityCard> activities = [];

  String formatURL(Map inputs) {
    String baseUrl = 'https://www.boredapi.com/api/activity';
    String url = baseUrl + '?';

    
    // Iterate through each entry in the inputs map
    inputs.forEach((key, value) {
      // Append the parameter and its value to the URL
      url += '$key=${value[0]}&'; // Assuming inputs are key-value pairs for parameters
    });

    // Remove the last '&' character from the URL
    url = url.substring(0, url.length - 1);

    return url;
  }

  @override
  Widget build(BuildContext context) {
    print(formatURL(widget.inputs));
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Column(
        // children: <Widget>[
        //   Center(
        //     child: ElevatedButton.icon(
        //       onPressed: formatURL(widget.inputs),
        //       icon: const Icon(Icons.autorenew),
        //       label: const Text('Generate Activity'),
        //     ),
        //   ),
        //   Expanded(
        //     child: activities.isEmpty
        //         ? Text("")
        //         : ListView.builder(
        //       itemCount: activities.length,
        //       itemBuilder: (context, index) {
        //         return activities[index];
        //       },
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
