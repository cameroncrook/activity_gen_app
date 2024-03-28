import 'package:flutter/material.dart';
import '../api/models/activity.dart';

class ActivityCard extends StatefulWidget {
  ActivityCard({
    required this.activity,
  });

  final Activity activity;

  @override
  _ActivityCardState createState() => _ActivityCardState();
}

class _ActivityCardState extends State<ActivityCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: ListTile(
        leading: Text(widget.activity.type),
        title: Text(widget.activity.activity),
        subtitle: Text('Estimated Costs: \$${widget.activity.price}'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
            Text('${widget.activity.participants}'),
            const Icon(Icons.people),
          ],
        ),
      ),
    );
  }
}
