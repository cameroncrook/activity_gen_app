import 'package:activity_gen/screens/participants_screen.dart';
import 'package:flutter/material.dart';
import 'participants_screen.dart';

class ActivityTypeScreen extends StatefulWidget {
  const ActivityTypeScreen({Key? key, required this.inputs}) : super(key:key);
  final Map inputs;


  @override
  State<ActivityTypeScreen> createState() => _ActivityTypeScreenState();
}

class _ActivityTypeScreenState extends State<ActivityTypeScreen> {
  var inputs = Map();

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
              inputs['type'] = ['relaxation'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
            },
            child: Text('Relaxation'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              inputs['type'] = ['busywork'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
            },
            child: Text('Busywork'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              inputs['type'] = ['recreational'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
              // Handle recreational button press
            },
            child: Text('Recreational'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              inputs['type'] = ['social'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
              // Handle social button press
            },
            child: Text('Social'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              inputs['type'] = ['education'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
              // Handle education button press
            },
            child: Text('Education'),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              inputs['type'] = ['music'];
              Navigator.push(context, MaterialPageRoute(builder: (context) => ParticipantsScreen(inputs: inputs,),),);
              // Handle music button press
            },
            child: Text('Music'),
          ),
        ],
      ),
    );
  }
}
