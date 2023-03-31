import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  final String imagePath;
  const CatalogImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(imagePath)
        .box
        .rounded
        .p8
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
