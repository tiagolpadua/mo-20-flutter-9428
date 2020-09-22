import 'package:bytebank/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider.value(
        value: AppConfig(),
        child: BytebankApp(),
      ),
    );

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<AppConfig>(context).darkMode
          ? ThemeData.dark()
          : bytebankTheme(),
      home: Dashboard(),
    );
  }
}

class AppConfig extends ChangeNotifier {
  bool _darkMode = false;

  bool get darkMode {
    return _darkMode;
  }

  void toggle() {
    this._darkMode = !this._darkMode;
    print('toggle: ${this._darkMode}');
    notifyListeners();
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
