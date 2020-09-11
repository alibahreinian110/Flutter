import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  String bill;
  String tip;
  int total = 0;
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
          Text(
            'مبلغ فیش را وارد کنید',
            style: TextStyle(
              color: Colors.grey[200],
              fontFamily: 'ElMessiri',
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextFormField(
              onChanged: (val) {
                setState(() => bill = val);
              },
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Text(
            'مبلغ انعام را وارد کنید',
            style: TextStyle(
              color: Colors.grey[200],
              fontFamily: 'ElMessiri',
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextFormField(
              onChanged: (val) {
                setState(() => tip = val);
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          RaisedButton(
            onPressed: () async {
              total = int.parse(bill) + int.parse(tip);
              print(total);
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
