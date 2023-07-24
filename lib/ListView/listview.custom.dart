import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewCustom(),
  ));
}

class ListViewCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 4"),
      ),
      body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => const Center(
                    child: Text("Hello"),
                  ))),
    );
  }
}
