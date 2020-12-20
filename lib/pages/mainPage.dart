import 'package:flutter/material.dart';

import 'defaultPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [MainHeader(), MainBody()],
      ),
    );
  }
}

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.network(
                'https://peaksport.com.ua/themes/default/sys_img/main-logo.png',
                width: 65,
              ),
              Image.network(
                'https://peaksport.com.ua/themes/default/sys_img/next-logo.png',
                width: 50,
              ),
            ],
          ),
          Column(
            children: [
              Text('Офіційний постачальник екіпірування'),
              Text('Олімпійської збірної України'),
            ],
          ),
        ],
      ),
    );
  }
}

class MainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BoldText(
            text: 'Картка постійного клієнта',
            margin: EdgeInsets.only(left: 20)),
        Row(
          children: [
            MyContainer(
                text: 'Все про програму лоляльності "PEAK"',
                margin: EdgeInsets.all(20)),
          ],
        ),
        DoubleContent(
          leftText: 'Нарахування балів',
          rightText: 'Списання балів',
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
        BoldText(text: 'Акції', margin: EdgeInsets.only(left: 20, top: 20)),
        DoubleContent(
          leftText: 'Нарахування балів',
          rightText: 'Списання балів',
          margin: EdgeInsets.all(20),
        ),
        BoldText(text: "Контакти", margin: EdgeInsets.only(left: 20)),
        Row(
          children: [
            MyContainer(text: 'Наші магазини', margin: EdgeInsets.all(20)),
          ],
        ),
        DoubleContent(
          leftText: 'Нарахування балів',
          rightText: 'Списання балів',
          margin: EdgeInsets.symmetric(horizontal: 20),
        ),
        DoubleContent(
          leftText: 'Нарахування балів',
          rightText: 'Списання балів',
          margin: EdgeInsets.all(20),
        ),
        BoldText(
            text: "Зворотній зв'язок",
            margin: EdgeInsets.only(left: 20, top: 20)),
        Row(
          children: [
            MyContainer(text: 'Відгук', margin: EdgeInsets.all(20)),
          ],
        ),
      ],
    );
  }
}

class BoldText extends StatelessWidget {
  final EdgeInsets margin;
  final String text;

  BoldText({this.margin, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
    );
  }
}

class DoubleContent extends StatelessWidget {
  final EdgeInsets margin;
  final String leftText;
  final String rightText;

  DoubleContent({this.margin, this.leftText, this.rightText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        children: [
          MyContainer(
            text: leftText,
            margin: EdgeInsets.only(right: 20),
          ),
          MyContainer(
            text: rightText,
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String text;
  final int flex;
  final EdgeInsets margin;

  MyContainer({this.text = '', this.flex = 1, this.margin});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: Colors.white,
        height: 150,
        margin: margin,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
                'https://peaksport.com.ua/themes/default/sys_img/main-logo.png'),
            Text(text),
          ],
        ),
      ),
    );
  }
}
