import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Listview3()));
}

class Listview3 extends StatelessWidget {
  var names = [
    "anju",
    "manju",
    "chinju",
    "kunju",
    "anu",
    "sanu",
    "sinu",
    "meera",
    "anu",
    "sanu",
    "sinu",
    "meera",
    "anju",
    "manju",
    "chinju",
    "kunju",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview builder"),
      ),
      body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset("assets/icons/NASALOGO.png"),
                title: Text(names[index]),
                subtitle: Text("Welocome to NASA"),
                trailing: Text("11:00"),
              ),
            );
          }),
    );
  }
}
