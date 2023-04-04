import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/store.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;

  const AddToCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    // VxState.listen(context, to: [AddMutation]);
    final CartModel cart = (VxState.store as MyStore).cart;
    //final CatalogModel cartcatalog = (VxState.store as MyStore).catalog;
    bool isInCart = cart.items.contains(catalog) ? true : false;

    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          //isInCart = isInCart.toggle();
          //cart.catalog = cartcatalog;
          //cart.add(catalog);
          //setState(() {});
          AddMutation(item: catalog);
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
