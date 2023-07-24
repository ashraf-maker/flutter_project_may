import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ListView2()));
}

class ListView2 extends StatelessWidget {
  var names = [
    "anju",
    "manju",
    "chinju",
    "kunju",
    "anu",
    "sanu",
    "sinu",
    "meera",
  ];

  var images = [
    "assets/icons/app.png",
    "assets/icons/love.png",
    "assets/icons/localcard.jpg",
    "assets/icons/goldcard.jpg",
    "assets/icons/NASALOGO.png",
    "assets/icons/nasaregister.jpg",
    "assets/icons/silvercard.jpg",
    "assets/icons/vipcard.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Listview 2"),
        ),
        body: ListView(
            children: List.generate(
                44,
                (index) => Card(
                      //child: Image.asset(images[index]),
                      child: Icon(Icons.add),
                      color: Colors.yellowAccent,
                    ))));
  }
}
