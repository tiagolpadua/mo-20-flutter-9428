import 'package:bytebank/database/app_database.dart';
import 'package:bytebank/models/contact.dart';
import 'file:///C:/git/mo-20/bytebank-9428/lib/screens/contact/list.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bytebankTheme(),
      home: Dashboard(),
    );
  }
}

ThemeData bytebankTheme() {
  return ThemeData(
    primaryColor: Colors.green[900],
    accentColor: Colors.blueAccent[700],
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blueAccent[700],
      textTheme: ButtonTextTheme.primary,
    ),
  );
}