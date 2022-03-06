import 'package:flutter/material.dart';
import 'package:flutter_calculator/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculator",
      home: new HomePage(),
      theme: new ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}
