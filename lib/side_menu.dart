import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/Pages/about.dart';
import 'package:my_portfolio/Pages/blog.dart';
import 'package:my_portfolio/Pages/body_page.dart';
import 'package:my_portfolio/Pages/contact.dart';
import 'package:my_portfolio/Pages/cv.dart';
import 'package:my_portfolio/Pages/portfolio/portfolioBody.dart';
import 'package:my_portfolio/profile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LeftMenu extends StatelessWidget{
  final onClick;
  LeftMenu(this.onClick);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        constraints: BoxConstraints(minWidth: 300, maxWidth: 1500),
        decoration: BoxDecoration(color: Colors.grey[500]),
        width: 350,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
          child: Material(
            color: Colors.transparent,
            child: ListView(
              //scrollDirection: Axis.vertical,
              //shrinkWrap: true,
              children: ListTile.divideTiles(context: context, tiles: [
                Profile(),
                MenuRow(
                  icon: Icons.folder_open_outlined,
                  text: "PORTFOLIO",
                  onClick: onClick,
                  page: PortfolioPage(),
                ),
                MenuRow(
                  icon: Icons.person,
                  text: "ABOUT ME",
                  onClick: onClick,
                  page: AboutPage(),
                ),
                MenuRow(
                  icon: Icons.phone_outlined,
                  text: "CONTACT ME",
                  onClick: onClick,
                  page: ContactPage(),
                ),
                MenuRow(
                  icon: Icons.article_outlined,
                  text: "MY CV",
                  onClick: onClick,
                  page: CVPage(),
                ),
                MenuRow(
                  icon: Icons.auto_stories,
                  text: "MY BLOG",
                  onClick: onClick,
                  page: BlogPage(),
                ),
                ContactsPanel(),
              ]).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class MenuRow extends StatelessWidget {
  final String _text;
  final IconData _icon;
  final BodyPage page; //page for this menu item
  final onClick;
  MenuRow({String text, IconData icon, this.page, this.onClick, key})
      : this._text = text,
        this._icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //return LeftMenu();
    return Container(
      color: Colors.transparent,
      child: ListTile(
        leading: Icon(
          _icon,
          color: Colors.grey[800],
        ),
        onTap: () => onClick(page),
        title: Text(_text),
        trailing: Icon(
          Icons.chevron_right_outlined,
          color: Colors.grey[800],
        ),
      ),
    );
  }
}

class ContactsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ContactButton(
              icon: FontAwesomeIcons.github,
              url: 'https://github.com/ahtyamovdanil',
            ),
            ContactButton(
              icon: FontAwesomeIcons.solidEnvelope,
              url: 'ahtyamovdanil@gmail.com',
            ),
            ContactButton(
              icon: FontAwesomeIcons.linkedin,
              url: 'https://www.linkedin.com/in/ahtyamov-danil-67b095155/',
            ),
            ContactButton(
              icon: FontAwesomeIcons.telegram,
              url: 'https://t.me/DanilAhtyamov',
            )
          ],
        ),
      ),
    );
  }
}

class ContactButton extends StatelessWidget {
  final String _url;
  final IconData _icon;

  ContactButton({String url, IconData icon, Key key})
      : this._url = url,
        this._icon = icon,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: FaIcon(
          _icon,
          color: Colors.grey[800],
        ),
        hoverColor: Colors.blueGrey[200],
        splashRadius: 20,
        onPressed: () async {
          if (await canLaunch(_url)) {
            await launch(_url);
          } else {
            throw 'Could not launch $_url';
          }
        });
  }
}
