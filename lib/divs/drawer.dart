import 'package:flutter/material.dart';
import 'package:graphify_website/home.dart';
import 'package:graphify_website/pages/aboutpage.dart';
import 'package:graphify_website/pages/contactpage.dart';
import 'package:graphify_website/pages/servicespage.dart';
import 'package:graphify_website/texts/paragraph.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          DrawerHeader(child: Image.asset("images/Graphifylogo.png")),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: ParagraphTexts(contenttext: "Home"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Homepage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.people_outline_outlined),
            title: ParagraphTexts(contenttext: "About Us"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.design_services),
            title: ParagraphTexts(contenttext: "Services"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Servicespage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.contact_page_sharp),
            title: ParagraphTexts(contenttext: "Contact Us"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
          ),
        ],
      ),
    );
  }
}
