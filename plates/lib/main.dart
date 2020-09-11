import 'package:flutter/material.dart';
import 'package:plates/pages/bill.dart';
import 'package:plates/pages/final.dart';
import 'package:plates/pages/people_count.dart';

Future main() async {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => PeopleCount(),
      '/bill': (context) => Bill(),
      'final': (context) => Final(),
    },
  ));
}
