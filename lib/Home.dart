import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OUR SPACE"),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("Payments")),
              PopupMenuItem(child: Text("Security")),
              PopupMenuItem(child: Text("Privacy"))
            ];
          })
        ],
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Center(
              child: Text("TAKE YOUR SPACE",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          Card(
            color: Colors.greenAccent,
            elevation: 5,
            shadowColor: Colors.black,
            child: ListTile(
                leading: Image.asset("assets/icons/vipcard.jpg"),
                title: const Text("VIP"),
                subtitle: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.done_all,
                      color: Colors.blueAccent,
                    )
                  ],
                ),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.local_airport))),
          ),
          Card(
              color: Colors.greenAccent,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(
                  leading: Image.asset("assets/icons/goldcard.jpg"),
                  title: Text("GOLD"),
                  subtitle: Text("\$600"),
                  trailing: Wrap(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.local_airport)),
                    ],
                  ))),
          Card(
              color: Colors.greenAccent,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(
                leading: Image.asset("assets/icons/silvercard.jpg"),
                title: Text("SILVER"),
                subtitle: Text("\$400"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.local_airport)),
              )),
          Card(
              color: Colors.greenAccent,
              elevation: 5,
              shadowColor: Colors.black,
              child: ListTile(
                leading: Image.asset("assets/icons/localcard.jpg"),
                title: Text("BRONZE"),
                subtitle: Text("\$200"),
                trailing: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.local_airport)),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
