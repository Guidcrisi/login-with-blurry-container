import 'package:flutter/material.dart';

import 'interface/LoginPage.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  static Color primary = const Color(0xFFE39912);
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login page estudo',
        theme: ThemeData(fontFamily: 'Rubik'),
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
