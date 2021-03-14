import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/MyRoutes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedState = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
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
            "Welcome $name",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      hintText: "Enter UserName", labelText: "Username")),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"))
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () async {
              setState(() {
                changedState = true;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context, MyRoutes.home);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              alignment: Alignment.center,
              width: changedState ? 50 : 150,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: changedState
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(8),
                  color: Colors.red),
              child: changedState
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
            ),
          )
          // ElevatedButton(
          //     onPressed: () {
          //       Navigator.pushNamed(context, MyRoutes.home);
          //     },
          //     child: Text("Login"))
        ],
      ),
    ));
  }
}
