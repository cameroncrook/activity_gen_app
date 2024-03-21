import 'package:activity_gen/screens/accessibility_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PriceScreen());
}

class PriceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Price Range',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Price Range'),
        ),
        body: PriceButtons(),
      ),
    );
  }
}

class PriceButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen()));
              // Price = 0
            },
            child: Text('Free'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen()));
               // Price Range: 0.1-0.3
              // Handle cheap button press
            },
            child: Text('Cheap'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen()));
               // Price Range: 0.4-0.6
              // Handle moderate button press
            },
            child: Text('Moderate'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen()));
               // Price Range: 0.7-1.0
              // Handle expensive button press
            },
            child: Text('Expensive'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen()));
               // Price range = 0.0 -1 , or leave blank to do default?
              // Handle any button press
            },
            child: Text('Any'),
          ),
        ],
      ),
    );
  }
}
