import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoute_card.dart';

void main() => runApp(MaterialApp(
      home: QuotList(),
    ));

class QuotList extends StatefulWidget {
  @override
  _QuotListState createState() => _QuotListState();
}

class _QuotListState extends State<QuotList> {
  List<Qoute> qoutes = [
    Qoute(author: 'ali', text: 'Be yourself; everyone else in already taken'),
    Qoute(author: 'hamid', text: 'I have nothing to declear expect my genius'),
    Qoute(author: 'Mojgan', text: 'The truth is rarely pure and never simple'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: qoutes
            .map((qoute) => QouteCard(
                qoute: qoute,
                delete: () {
                  setState(() {
                    qoutes.remove(qoute);
                  });
                }))
            .toList(),
      ),
    );
  }
}
