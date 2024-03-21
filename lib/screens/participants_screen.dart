import 'package:activity_gen/screens/price_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ParticipantsNumScreen());
}

class ParticipantsNumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number of participants',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Number of participants'),
        ),
        body: ParticipantsNumButtons(),
      ),
    );
  }
}

class ParticipantsNumButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen()));
            },
            child: Text('1'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle busywork button press
            },
            child: Text('2'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen()));
              // Handle recreational button press
            },
            child: Text('3'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen()));
              // Handle social button press
            },
            child: Text('4'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen()));
              // Handle education button press
            },
            child: Text('5'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen()));
              // Handle music button press
            },
            child: Text('6'),
          ),
        ],
      ),
    );
  }
}
