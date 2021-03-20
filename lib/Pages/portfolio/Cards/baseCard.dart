import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/body_page.dart';
import 'package:flutter/services.dart';

class BaseCard extends StatelessWidget {
  final _height = 200.0;
  final _width = 300.0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          color: Colors.grey[500],
          child: InkWell(
            onTap: () {
              print("Container clicked");
            },
            splashColor: Colors.transparent,
            borderRadius: BorderRadius.circular(15.0),
            hoverColor: Colors.blueGrey[200],
            child: Container(
              child: Center(
                child: Text("WIP"),
              ),
              // height: _height,
              // width: _width,
            ),
          ),
        ),
      ),
    );
  }
}
