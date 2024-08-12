import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("this"),
              Text("is"),
              Text("a"),
              Text('row'),
            ],
          ),
        ),
        drawer: Drawer(
            child: ListView(
          children: const [
            DrawerHeader(),
            ListTile(
              title: Text("Item 1"),
            ),
            ListTile(
              title: Text("Item 2"),
            )
          ],
        )),
        bottomNavigationBar: const BottomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: null,
              icon: Icon(Icons.home),
              iconSize: 30,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.settings),
              iconSize: 30,
            ),
            IconButton(
              onPressed: null,
              icon: Icon(Icons.person),
              iconSize: 30,
            )
          ],
        )),
      ),
    );
  }
}
