// ignore_for_file: must_be_immutable
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import '../widgets/item_widget.dart';
import '../widgets/mydrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int days = 30;

  String name = "Salim Shaikh";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    //await Future.delayed(Duration(seconds: 5));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    //List<Item> list = List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                          padding: const EdgeInsets.all(10),
                          decoration:
                              const BoxDecoration(color: Colors.deepPurple),
                          child: Text(
                            item.name,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        footer: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(color: Colors.black),
                          child: Text(
                            item.price.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        child: Image.network(item.image),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
