import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/MainModel.dart';
import 'pages/mainPage.dart';

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.grey[300],
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Consumer<MainModel>(builder: (context, model, child) {
            if (model.isMainPage || model.page == null) {
              return MainPage();
            } else {
              return model.page;
            }
          }),
        ));
  }
}
