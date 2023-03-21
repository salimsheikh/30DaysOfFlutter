import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.name} Pressed");
        },
        leading: Image.network(item.image),
        title: Text(
          item.name,
          style: const TextStyle(color: Colors.black),
        ),
        subtitle: Text(
          item.desc,
          style: const TextStyle(color: Colors.black),
        ),
        trailing: Text("\$${item.price}",
            textScaleFactor: 1.2,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.deepPurple)),
      ),
    );
  }
}
