import 'package:flutter/material.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final Function delete;
  QouteCard({this.qoute, this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              qoute.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6),
            Text(
              qoute.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 8),
            FlatButton.icon(
              onPressed: delete,
              label: Text('delet the icon'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
