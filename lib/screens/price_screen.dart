import 'package:activity_gen/screens/accessibility_screen.dart';
import 'package:flutter/material.dart';


class PriceScreen extends StatelessWidget {
  const PriceScreen({Key? key, required this.inputs,}) : super(key: key);
  final Map inputs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Price Range',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Price Range'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  inputs['price_range'] = ['0', '0'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen(inputs: inputs,),),);
                },
                child: Text('Free'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['price_range'] = ['0.1', '0.3'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen(inputs: inputs,),),);
                  // Price Range: 0.1-0.3
                  // Handle cheap button press
                },
                child: Text('Cheap'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['price_range'] = ['0.4', '0.6'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen(inputs: inputs,),),);
                  // Price Range: 0.4-0.6
                  // Handle moderate button press
                },
                child: Text('Moderate'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['price_range'] = ['0.7', '1.0'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen(inputs: inputs,),),);
                  // Price Range: 0.7-1.0
                  // Handle expensive button press
                },
                child: Text('Expensive'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['price_range'] = ['0.0', '1.0'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccessibilityScreen(inputs: inputs,),),);
                  // Price range = 0.0 -1 , or leave blank to do default?
                  // Handle any button press
                },
                child: Text('Any'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

