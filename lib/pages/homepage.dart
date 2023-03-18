// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int days = 30;
  String name = "Salim Shaikh";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog Page"),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Text("Welcom to $days days of flutter by $name"),
      ),
    );
  }
}
