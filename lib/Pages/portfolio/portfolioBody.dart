import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/body_page.dart';
import 'package:my_portfolio/Pages/portfolio/Cards/baseCard.dart';

class PortfolioPage extends BodyPage {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.count(
          crossAxisCount: 4,
          children: [
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
            BaseCard(),
          ],
        ),
      ),
    );
  }
}
