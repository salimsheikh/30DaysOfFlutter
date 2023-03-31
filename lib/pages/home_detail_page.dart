// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
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
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.lg.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(const StadiumBorder()),
                backgroundColor:
                    MaterialStateProperty.all(MyTheme.darkBluishColor),
              ),
              child: "Buy".text.make(),
            )
          ],
        ).pOnly(right: 8.0),
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
                        color: Colors.white,
                        width: context.screenWidth,
                        child: Column(children: [
                          catalog.name.text.xl4.lg.bold
                              .color(MyTheme.darkBluishColor)
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .make(),
                        ]).py64(),
                      )))
            ],
          ),
        ));
  }
}
