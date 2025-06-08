// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:graphify_website/home.dart';

import 'package:graphify_website/pages/aboutpage.dart';
import 'package:graphify_website/pages/contactpage.dart';
import 'package:graphify_website/pages/servicespage.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const Appbar({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey.withOpacity(0.1),
      shadowColor: Colors.blueAccent.withOpacity(0.2),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20.0),
            child: Image.asset(
              "images/Graphifylogo.png",
              fit: BoxFit.cover,
              width: 250,
              height: 80,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Text("Home"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                  child: Text("About Us"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servicespage()),
                    );
                  },
                  child: Text("Services"),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                  },
                  child: Text("Contact Us"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(height);
}
// mobile_app_bar.dart

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions; // Optional actions for the AppBar

  const MobileAppBar({
    super.key,
    required this.title, // Default title
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.blueAccent.withOpacity(0.2),
      title: Text(title),
      centerTitle: true, // Typically centered for mobile apps
      leading: Builder(
        builder: (context) {
          // This Builder ensures we have a Scaffold context to open the Drawer
          return IconButton(
            icon: const Icon(Icons.menu_sharp),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // Opens the Scaffold's drawer
            },
          );
        },
      ),
      actions: actions, // Pass through any custom actions
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Standard AppBar height
}
