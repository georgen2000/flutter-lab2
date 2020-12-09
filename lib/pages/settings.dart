import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        height: 600,
        child: Text(
          'settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
