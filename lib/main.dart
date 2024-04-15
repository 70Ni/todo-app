import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testproject/Pages/TodoPage.dart';
import 'package:testproject/Pages/TodoPagetest.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List names = ["Mitch, Mark, Martin, fin"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.yellow),
      home: HomePage(),
    );
  }
}
