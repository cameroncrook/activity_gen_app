import 'package:activity_gen/screens/price_screen.dart';
import 'package:flutter/material.dart';
import 'price_screen.dart';

class ParticipantsScreen extends StatelessWidget {
  const ParticipantsScreen({Key? key, required this.inputs,}) : super(key: key);
  final Map inputs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number of participants',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Number of participants'),
        ),
        body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['1'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen(inputs: inputs,),),);
                },
                child: Text('1'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['2'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen(inputs: inputs,),),);
                },
                child: Text('2'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['3'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen(inputs: inputs,),),);
                  // Handle recreational button press
                },
                child: Text('3'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['4'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen(inputs: inputs,),),);
                  // Handle social button press
                },
                child: Text('4'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['5'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PriceScreen(inputs: inputs,),),);
                  // Handle education button press
                },
                child: Text('5'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['participants'] = ['6'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
                  // Handle music button press
                },
                child: Text('6'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

