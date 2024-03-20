import 'package:flutter/material.dart';

void main() {
  runApp(ActivityTypeScreen());
}

class ActivityTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity Type',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Activity Type'),
        ),
        body: ActivityTypeButtons(),
      ),
    );
  }
}

class ActivityTypeButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              // Handle relaxation button press
            },
            child: Text('Relaxation'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle busywork button press
            },
            child: Text('Busywork'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle recreational button press
            },
            child: Text('Recreational'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle social button press
            },
            child: Text('Social'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle education button press
            },
            child: Text('Education'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle music button press
            },
            child: Text('Music'),
          ),
        ],
      ),
    );
  }
}
