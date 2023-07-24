import 'package:flutter/material.dart';

class StackEx extends StatelessWidget {
  const StackEx({super.key})

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STACK Example"),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              child: Image.network("https://images.unsplash.com/photo-1689955060100-2a50c975d94c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80"),
            ),
          ],
        ),
      ),
    );
  }
}
