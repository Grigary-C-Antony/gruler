import 'package:flutter/material.dart';
import 'package:gruler/home.dart';
import 'package:gruler/nav_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Stack(children: [Drawering(), Homepage()]),
    );
  }
}
