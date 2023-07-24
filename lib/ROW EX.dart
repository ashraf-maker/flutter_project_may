import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ROWEX(),
  ));
}

class ROWEX extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: SizedBox(
        width: 100,
        height: 100,
        child: Row(
          children: [
            Icon(
              Icons.local_airport,
              size: 50,
            ),
            Icon(
              Icons.local_airport,
              size: 25,
            ),
            Icon(
              Icons.local_airport,
              size: 50,
            ),
            Icon(
              Icons.local_airport,
              size: 25,
            ),
            Icon(
              Icons.local_airport,
              size: 50,
            ),
          ],
        ),
      ),
    );
  }
}
