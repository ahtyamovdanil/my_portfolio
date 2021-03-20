import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/body_page.dart';
import 'package:flutter/services.dart';

class BotDescriptiion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: FutureBuilder(
          future: rootBundle.loadString("texts/portfolio/mybot.md"),
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data,
                softWrap: true,
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText2
                    .copyWith(fontFamily: 'Ubuntu', locale: Locale("Ru"), fontSize: 20, color: Colors.grey[600]),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
