import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/body_page.dart';
import 'package:my_portfolio/side_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BodyPage _currentPage = BodyPage(
    child: Placeholder(),
  );

  void onClick(BodyPage page) {
    setState(() {
      _currentPage = page;
      print("hello");
    });
  }

  @override
  Widget build(BuildContext context) {
    //return LeftMenu();
    return Align(
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          LeftMenu(
            onClick,
          ),
          _currentPage,
        ],
      ),
      // child: Row(
      //   children: [LeftMenu(), BodyPage()],
      // ),
    );
  }
}
