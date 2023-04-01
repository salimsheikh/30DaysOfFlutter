// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        backgroundColor: context.theme.canvasColor,
        bottomNavigationBar: Container(
          color: context.theme.cardColor,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder()),
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.primaryColorDark),
                ),
                child: "Add to Cart".text.make(),
              ).wh(150, 50)
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image).p16(),
              ).h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        color: context.theme.cardColor,
                        width: context.screenWidth,
                        child: Column(children: [
                          catalog.name.text.xl4.bold
                              .color(context.theme.primaryColorLight)
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .xl
                              .make(),
                          10.heightBox,
                          "Voluptate reprehenderit pariatur ut eu laboris sint voluptate ex magna culpa et."
                              .text
                              .textStyle(context.captionStyle)
                              .make()
                              .p8()
                        ]).p32(),
                      )))
            ],
          ),
        ));
  }
}
