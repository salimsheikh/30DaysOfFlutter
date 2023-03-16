import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  int days = 30;
  String name = "Salim Shaikh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Page"),
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
