import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(),
  ));
}

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // initial state of splashPage
  // there are two functionalities in state class
// initState(){} and setState(){}
//initState(){} - what what will happen when the app or screen is loaded initially
//setState(){} - what change  will occur on a widget or screen
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,  // to set a single color to the entire screen
        // appBar: AppBar(
        //   backgroundColor: Colors.lightBlue[400],
        //   //centerTitle: true,
        //   title: const Text(
        //     "My Application",
        //     style: TextStyle(fontSize: 30, color: Colors.black),
        //   ),
        // ),
        body: Container(
      // color: Colors.blueAccent, // to set a single color to the entire screen
      decoration: BoxDecoration(
          //   image: DecorationImage(  // to set an image as screen background
          // fit: BoxFit.fill,          // to fit the image to the entire screen
          // image: AssetImage("assets/images/code.jpg"),
          // image: NetworkImage("https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80")
          gradient: LinearGradient(
              // stops: [.9, .8, .7, .5],
              colors: [Colors.red, Colors.white, Colors.black],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.favorite, color: Colors.red, size: 60,),
            Image.asset("assets/icons/NASALOGO.png"),
            // Image.network("https://images.unsplash.com/photo-1518621736915-f3b1c41bfd00?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=993&q=80", height: 600, width: 800,),
            Text("WELCOME TO OUR SPACE",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
            //  style: GoogleFonts(),
          ],
        ),
      ),
    ));
  }
}
