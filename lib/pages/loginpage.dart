import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset("assets/images/login.png", fit: BoxFit.cover),
        SizedBox(height: 20.0),
        Text(
          "Login Page",
          style: TextStyle(
              fontSize: 24, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text("Login"),
                style: TextButton.styleFrom(),
                onPressed: () {
                  print("Login");
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}

/* Day 3 tutoiral */
class DayThreeLoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          child: Text(
            "Login Page",
            style: TextStyle(
                fontSize: 20, color: Colors.blue, fontWeight: FontWeight.bold),
            textScaleFactor: 2.0,
          ),
        ),
      ),
    );
  }
}
