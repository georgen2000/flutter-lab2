import 'package:flutter/material.dart';
import 'package:lab2/body.dart';
import 'package:lab2/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peak',
      theme: ThemeData(primaryColor: Colors.grey[300]),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () => null,
            ),
          ],
        ),
        body: MyBody(),
        drawer: MyDrawer(),
      ),
    );
  }
}
