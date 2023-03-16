import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Salim";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("Welcom to $days days of flutter by $name"),
        ),
      ),
    );
  }
}
