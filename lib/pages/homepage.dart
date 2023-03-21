// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import '../widgets/item_widget.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  int days = 30;
  String name = "Salim Shaikh";
  final dummList = List.generate(50, (index) => CatalogModel.items[0]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dummList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
