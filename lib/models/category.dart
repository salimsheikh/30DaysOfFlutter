import 'package:flutter/material.dart';

class Category {
  late int categoryId;
  late String categoryName;
  late String categoryDesc;
  late int parent;
  late Image categoryImage;

  Category({
    required this.categoryId,
    required this.categoryName,
    required this.categoryDesc,
    required this.parent,
    required this.categoryImage,
  });

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['id'];
    categoryName = json['name'];
    categoryDesc = json['description'];
    parent = json['parent'];

    if (json['image'] != null) {
      categoryImage = json['image'];
    } else {
      categoryImage = Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg');
    }
  }
}

class ImageModel {
  late String url;

  ImageModel({
    required this.url,
  });

  ImageModel.formJson(Map<String, dynamic> json) {
    url = json['src'];
  }
}
