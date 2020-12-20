import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'defaultPage.dart';

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {
  Widget response = Container();

  void getData() async {
    Widget responseCreate;
    await getResponse().then((value) {
      print(value);
      responseCreate = Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('email'), Text(value.email)],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Номер телефону'), Text(value.phone)],
              ),
            ),
          ],
        ),
      );
    }).catchError((e) {
      responseCreate = Container(
        padding: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('error'), Text(e.toString())],
              ),
            ),
          ],
        ),
      );
    });
    setState(() {
      response = responseCreate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RaisedButton(
            onPressed: () {
              getData();
            },
            child: const Text('Показати контактні дані',
                style: TextStyle(fontSize: 20)),
          ),
          response,
          Container(
            height: 600,
          ),
        ],
      ),
    );
  }
}

Future<SupportPersonalData> getResponse() async {
  final response =
  await http.get('https://api.jsonbin.io/b/5fdbee952fd0b8081255e4cc/1');

  if (response.statusCode == 200) {
    return SupportPersonalData.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to load info');
  }
}

class SupportPersonalData {
  final String email;
  final String phone;

  SupportPersonalData({this.email, this.phone});

  factory SupportPersonalData.fromJson(Map<String, dynamic> json) {
    return SupportPersonalData(
      email: json['email'],
      phone: json['phone'],
    );
  }


}