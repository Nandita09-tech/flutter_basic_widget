import 'package:flutter/material.dart';
import 'package:flutter_basic_widget/screens/list_body.dart';

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
              FlutterLogo(size: 40),
              SizedBox(width: 40),
              Icon(Icons.notifications, size: 30, color: Colors.white),
              Icon(Icons.search, size: 30, color: Colors.white),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return numbers[index];
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              DrawerHeader(
                child: Text('Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: null,
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: null,
              ),
              ListTile(
                title: Text('Item 3'),
                onTap: null,
              ),
              ListTile(
                title: Text('Item 4'),
                onTap: null,
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.home),
                onPressed: null,
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.settings),
                onPressed: null,
              ),
              IconButton(
                iconSize: 30,
                icon: Icon(Icons.person),
                onPressed: null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
