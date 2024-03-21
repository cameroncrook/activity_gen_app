import 'package:flutter/material.dart';

void main() {
  runApp(AccessibilityScreen());
}

class AccessibilityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessiblity Level',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Accessiblity Level'),
        ),
        body: AccessibilityButtons(),
      ),
    );
  }
}

class AccessibilityButtons extends StatelessWidget {
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
            child: Text('Very Accessible'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle busywork button press
            },
            child: Text('Moderately Accessible'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle recreational button press
            },
            child: Text('Not Very Accessible'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle social button press
            },
            child: Text('No Preference'),
          ),
        ],
      ),
    );
  }
}
