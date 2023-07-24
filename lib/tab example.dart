import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabbarEx(),
  ));
}

class TabbarEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("WhatsApp"),
          actions: [
            const Icon(Icons.camera_alt_outlined),
            const SizedBox(
              width: 30,
            ),
            const Icon(Icons.search),
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(child: Text("New group")),
                const PopupMenuItem(child: Text("New broadcast")),
                const PopupMenuItem(child: Text("Linked devices")),
                const PopupMenuItem(child: Text("Starred messages")),
                const PopupMenuItem(child: Text("payments")),
                const PopupMenuItem(child: Text("settings"))
              ];
            })
          ],
          bottom: const TabBar(tabs: [
            Icon(Icons.people),
            Text("chats"),
            Text("Status"),
            Text("Call"),
          ]),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Community"),
            ),
            Center(
              child: Text("Chats"),
            ),
            Center(
              child: Text("Status"),
            ),
            Center(
              child: Text("Call"),
            ),
          ],
        ),
      ),
    );
  }
}
