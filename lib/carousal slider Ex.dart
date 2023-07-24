import 'package:flutter/material.dart';

class CSlider extends StatelessWidget {
  const CSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("assets/images/nasa.jpg"))),
        )
      ]),
    );
  }
}
