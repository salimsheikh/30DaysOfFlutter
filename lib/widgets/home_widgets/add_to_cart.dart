import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatefulWidget {
  final Item catalog;
  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  //const _AddToCart({Key? key}) : super(key: key);
  final cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = cart.items.contains(widget.catalog) ? true : false;

    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          isInCart = isInCart.toggle();
          final catalog = CatalogModel();
          cart.catalog = catalog;
          cart.add(widget.catalog);
          setState(() {});
        }
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const StadiumBorder()),
        backgroundColor:
            MaterialStateProperty.all(context.theme.primaryColorDark),
      ),
      child: isInCart == true
          ? const Icon(Icons.done)
          : const Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
