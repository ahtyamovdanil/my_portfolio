import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/home_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
