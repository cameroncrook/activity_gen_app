import 'package:flutter/material.dart';
import '../api/api_service.dart';
import '../api/models/activity.dart';
import '../widgets/activity_card.dart';

class GeneratorScreen extends StatefulWidget {
  const GeneratorScreen({super.key});

  @override
  State<GeneratorScreen> createState() => _GeneratorScreenState();
}

class _GeneratorScreenState extends State<GeneratorScreen> {
  @override

  List<ActivityCard> activities = [];



  void addActivity() async {
    Activity activity = await getActivity();

    setState(() {
      activities.add(ActivityCard(activity: activity));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generator"),
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: ElevatedButton.icon(
              onPressed: addActivity, 
              icon: const Icon(Icons.autorenew), 
              label: const Text('Generate Activity'),
            ),
          ),
          // FutureBuilder(
          //   future: getActivity(), 
          //   builder: (context, snapshot) {
          //     if (snapshot.hasData) {
          //       Activity activity = snapshot.data as Activity;
          //       return ActivityCard(activity: activity);
          //     } else if (snapshot.connectionState == ConnectionState.waiting) {
          //       return const CircularProgressIndicator();
          //     } else {
          //       return const Text('Something went wrong');
          //     }
          //   }
          // ),
          Expanded(
            child: activities.isEmpty 
              ? Text("")
              : ListView.builder(
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    return activities[index];
                  }
            ),
          ),
        ],
      ),
    );
  }
}

// ListView.builder(
//                     itemCount: activities.length,
//                     itemBuilder: (context, index) {
//                       return activities[index];
//                     }
//                   ),