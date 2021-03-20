import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //width: 300,
      aspectRatio: 1,
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          child: Column(
            children: [
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.white60,
                child: ClipOval(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Image(
                      image: AssetImage('assets/images/avatar.jpg'),
                    ),
                  ),
                ),
                radius: 90,
              ),
              Spacer(),
              Text("AHTYAMOV DANIL"),
              Text("MACHINE LEARNING ENGINEER"),
              Spacer(),
              //Spacer(),
            ],
          )),
    );
  }
}
