import 'package:flutter/material.dart';
import '../api/models/activity.dart';

class ActivityCard extends StatelessWidget {
  ActivityCard({
    required this.activity
  });

  final Activity activity;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: ListTile(
        leading: Text(activity.type),
        title: Text(activity.activity),
        subtitle: Text('Estimated Costs: \$${activity.price}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('${activity.participants}'),
            const Icon(Icons.people)
          ],
        )
      ),
    );
  }
}