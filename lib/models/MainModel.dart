import 'package:flutter/material.dart';

class MainModel with ChangeNotifier {
  Widget _page;
  bool _isMainPage;
  String _title;

  Widget get page => _page;

  set page(Widget value) {
    _page = value;
    notifyListeners();
  }

  String get title => _title ?? "";

  set title(String value) {
    _title = value;
    notifyListeners();
  }

  bool get isMainPage => _isMainPage ?? true;

  set isMainPage(bool value) {
    _isMainPage = value;
    notifyListeners();
  }
}
