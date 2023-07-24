import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_may/Home.dart';
import 'package:flutter_project_may/main.dart';
import 'package:flutter_project_may/registration.dart';

class LoginPage extends StatelessWidget {
  String username = "admin@123";
  String password = "abc123";

  final uname = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "welcome to NASA",
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/nasa.jpg", height: 100, width: 100),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: uname,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "user name",
                  helperText: "user name must be an email",
                  labelText: "user name",
                  prefixIcon: Icon(Icons.person),
                  prefixIconColor: Colors.red),
              cursorColor: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            child: TextField(
              controller: pass,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  hintText: "password",
                  labelText: "password",
                  helperText: "password must contain 6 character",
                  prefixIcon: Icon(Icons.visibility),
                  suffixIcon: Icon(Icons.visibility_off_sharp),
                  suffixIconColor: Colors.red,
                  prefixIconColor: Colors.red),
              cursorColor: Colors.red,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                if (uname.text != "" && pass.text != "") {
                  if (uname.text == username && pass.text == password) {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Email/password is Incorrect"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
              child: const Text("Login")),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrationPage()));
              },
              child: const Text("Not a User! Register Here..."))
        ],
      ),
    );
  }
}
