import 'package:flutter/material.dart';
import 'package:lab2/models/MainModel.dart';
import 'package:lab2/pages/httpPage.dart';
import 'package:lab2/pages/mainPage.dart';
import 'package:lab2/pages/settings.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MainModel>(
      create: (context) => MainModel(),
      child: MaterialApp(
        title: 'Peak',
        theme: ThemeData(primaryColor: Colors.grey[300]),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/settings': (context) => Settings(),
          '/http': (context) => HttpPage(),
        },
      ),
    );
  }
}
