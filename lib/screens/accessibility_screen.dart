import 'package:activity_gen/screens/user_generator_screen.dart';
import 'package:flutter/material.dart';



class AccessibilityScreen extends StatelessWidget {
  const AccessibilityScreen({Key? key, required this.inputs,}) : super(key: key);
  final Map inputs;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Accessibility Level',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Accessiblity Level'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  inputs['accessibility'] = ['0.0', "0.2"];
                  print(inputs);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserGeneratorScreen(inputs: inputs,),),);
                  // Handle relaxation button press
                },
                child: Text('Very Accessible'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['accessibility'] = ['0.3', "0.6"];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserGeneratorScreen(inputs: inputs,),),);
                },
                child: Text('Moderately Accessible'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['accessibility'] = ['0.7', '1.0'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserGeneratorScreen(inputs: inputs,),),);
                },
                child: Text('Not Very Accessible'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  inputs['accessibility'] = ['0.0', '1.0'];
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UserGeneratorScreen(inputs: inputs,),),);
                },
                child: Text('No Preference'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

