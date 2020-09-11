import 'package:flutter/material.dart';

class PeopleCount extends StatefulWidget {
  @override
  _PeopleCountState createState() => _PeopleCountState();
}

class _PeopleCountState extends State<PeopleCount> {
  int count = 2;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(0, 0, 450, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 3, 0),
            child: Text(
              'چند نفر هستید؟',
              style: TextStyle(
                fontSize: 35,
                color: Colors.grey[200],
                letterSpacing: 1,
                fontFamily: 'ElMessiri',
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            '$count',
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 100,
              fontWeight: FontWeight.bold,
              fontFamily: 'BalsamiqSans',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (count > 11) {
                      count = 12;
                    } else
                      count += 1;
                  });
                },
                textColor: Colors.grey[200],
                color: Colors.tealAccent[200],
                highlightColor: Colors.blue,
                child: Text(
                  '+',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    if (count <= 2) {
                      count = 2;
                    } else
                      count -= 1;
                  });
                },
                textColor: Colors.grey[200],
                color: Colors.tealAccent[200],
                highlightColor: Colors.blue,
                child: Text(
                  '-',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/bill',
              );
            },
            textColor: Colors.grey[200],
            color: Colors.tealAccent[200],
            highlightColor: Colors.blue,
            child: Icon(
              Icons.navigate_next,
              size: 40,
            ),
          ),
        ],
      ),
      color: Colors.tealAccent[400],
    );
  }
}
