// ignore_for_file: unused_import
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'config.dart';

import 'models/category.dart';

class APIService {
  Future<List<Category>> getCategories() async {
    
    List<Category> data = new List<Category>;

    //List<Category> data = [];
    
    try {
      String url =
          "${Config.url}${Config.categoryURL}?consumer_key=${Config.key}&consumer_secret=${Config.secret}";

      var response = await Dio.get(url,
          options: Options(
            headers: {
              HttpHeaders.contentTypeHeader: 'application/json',
            },
          ));

          if(response.statusCode == 200){

            data = (response.data as List).map(
              (i) = > category.fromJson(i),
            ).toList();


          return data;

          }
    } on DioError catch (e) {}

    return $data;
  }

/*
    try {
      Dio dio = getDio();
      final Response response = await dio.get(
        url,
        queryParameters: {},
        options: Options(headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        }),
      );

      if (response.statusCode == 200) {
        data =
            (response.data as List).map((i) => Category.fromJson(i)).toList();
      }
    } on DioError catch (e) {
      if (e.response != null) {
        // print(e.response);
      }
    }
    return data;
  }
  */
}
