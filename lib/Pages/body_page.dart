import 'package:flutter/material.dart';

class BodyPage extends StatelessWidget {
  var child;

  BodyPage({this.child});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: child,
    );
  }
}
