import 'package:flutter/material.dart';
import 'package:flutter_project_may/Home.dart';
import 'package:flutter_project_may/ListView/listview%20with%20list%20generate.dart';
import 'package:flutter_project_may/login.dart';
import 'package:flutter_project_may/main.dart';
import 'package:flutter_project_may/registration.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;
  var screens = [HomePage(), LoginPage(), ListView2(), RegistrationPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomBar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          backgroundColor: Colors.green,
          selectedItemColor: Colors.redAccent,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.yellowAccent,
                icon: Icon(Icons.contacts_sharp),
                label: "Contact"),
            BottomNavigationBarItem(
                backgroundColor: Colors.blueAccent,
                icon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                backgroundColor: Colors.pink,
                icon: Icon(Icons.add_box_rounded),
                label: "view"),
            BottomNavigationBarItem(
                backgroundColor: Colors.purpleAccent,
                icon: Icon(Icons.home),
                label: "Home")
          ]),
      body: screens[index],
    );
  }
}
