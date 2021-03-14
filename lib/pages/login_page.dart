import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        SizedBox(
          height: 40.0,
        ),
        Image.asset(
          'assets/images/login_img.png',
          fit: BoxFit.fill,
        ),
        Text(
          "Welcome",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(children: [
            TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter UserName", labelText: "Username")),
            TextFormField(
                obscureText: truedsf,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"))
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              print("hello");
            },
            child: Text("Login"))
      ],
    ));
  }
}
