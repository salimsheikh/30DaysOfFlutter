import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(children: [
        _CartList().p32().expand(),
        const Divider(),
        _CartTotal()
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  //const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel cartData = (VxState.store as MyStore).cart;
    // final cartData = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cartData.totalPrice}"
              .text
              .xl
              .color(context.theme.primaryColorLight)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Buying not supporete yet.")));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                context.theme.primaryColorDark,
              ),
            ),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel cart = (VxState.store as MyStore).cart;
    return cart.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => ListTile(
              leading: const Icon(Icons.done),
              trailing: IconButton(
                icon: const Icon(Icons.remove_circle_outline),
                onPressed: () {
                  cart.remove(cart.items[index]);
                  //setState(() {});
                },
              ),
              title: cart.items[index].name.text.make(),
            ),
          );
  }
}
