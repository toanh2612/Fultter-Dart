import 'package:flutter/material.dart';
//import 'package:flutterapp/FristScreen.dart';
import 'package:flutterapp/SecondScreen.dart';
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First app by me',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      home: SecondScreen()
    );
  }
}