import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainModel with ChangeNotifier {
  SharedPreferences _pref;
  String _userName;

  MainModel() {
    _loadFromPrefs();
  }

  String get userName => _userName;

  set userName(String value) {
    _userName = value;
    _pref.setString('userName', null);
    notifyListeners();
  }

  _initPrefs() async {
    if (_pref == null) _pref = await SharedPreferences.getInstance();
  }

  _loadFromPrefs() async {
    await _initPrefs();
    _userName = _pref.getString('userName') ?? 'Євген';
    print(_userName);
    notifyListeners();
  }
}
