import 'package:flutter/material.dart';
import 'pages/battery.dart';
import 'pages/settings.dart';
import 'pages/home.dart';

void main() {
  runApp(new MaterialApp(home: new Home(), routes: <String, WidgetBuilder>{
    Settings.routeName: (BuildContext context) => new Settings(),
    Battery.routeName: (BuildContext context) => new Battery()
  }));
}
