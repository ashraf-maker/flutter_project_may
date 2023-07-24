import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListView_Separator(),
  ));
}

class ListView_Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("List Separator"),
      ),
      body: ListView.separated(
          itemBuilder: (c, index) {
            return const Card(
              color: Colors.amber,
              child: Text("HELLO"),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 5 == 0) {
              return const Divider(color: Colors.brown);
            }
            return Text("list123");
          },
          itemCount: 15),
    );
  }
}
