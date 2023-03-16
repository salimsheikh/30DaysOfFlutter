import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'pages/loginpage.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => HomePage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
