import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView4(),
  ));
}

class GridView4 extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

        /// way 1
        // childenDelegate : SilverChildListDelegate(
        //     [
        //       Card(child: Text(1)),
        //       Card(child: Text(2)),
        //     ];
        // )
        /// way 2
        // childrenDelegate: SliverChildBuilderDelegate(
        //     (context, index) => Card(child: Text("Hello"))),
        /// way 3
        childrenDelegate: SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) => const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(child: Center(child: Text("Hello"))),
                )),
      ),
    );
  }
}
