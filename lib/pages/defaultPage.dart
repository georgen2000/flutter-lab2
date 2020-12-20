import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../drawer.dart';
import '../models/MainModel.dart';

class DefaultPage extends StatelessWidget {
  Widget child;

  DefaultPage({this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            Container(
              alignment: Alignment.center,
              child: Text(
                '133',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () => null,
            ),
          ],
          title: Container(
            /*child: Consumer<MainModel>(builder: (context, model, child) {
              return Text(model.title);
            }),*/
            alignment: Alignment.center,
          )),
      body: Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: child,
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
