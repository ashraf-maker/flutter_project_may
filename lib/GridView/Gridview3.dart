import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridView3(),
  ));
}

class GridView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 30,
        mainAxisSpacing: 20,
        children: List.generate(
            15,
            (index) => Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/nasa.jpg",
                      height: 80,
                    ),
                    const Text(
                      "WELCOME TO OUR SPACE",
                      style: TextStyle(color: Colors.yellow),
                    )
                  ],
                ))),
      ),
    );
  }
}
