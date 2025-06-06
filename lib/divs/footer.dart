import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphify_website/home.dart';
import 'package:graphify_website/pages/aboutpage.dart';
import 'package:graphify_website/pages/contactpage.dart';
import 'package:graphify_website/pages/privacy.dart';
import 'package:graphify_website/pages/servicespage.dart';
import 'package:graphify_website/pages/terms.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/footerbg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/Graphifylogo.png"),
                SizedBox(height: 30),
                Text(
                  "Graphify offer various kinds of products and services to the public and business firms to boost up their portfolio level. We nurture personal growth for our team by creating a challenging environment with opportunities.",
                  textAlign: TextAlign.justify,

                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 50),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quick Navigations",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servicespage()),
                    );
                  },
                  child: Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Privacypolicy()),
                    );
                  },
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsandCondition(),
                      ),
                    );
                  },
                  child: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Graphify Infotech,\n36D, Veerakeralam Road, \nVadavalli,Thirumurugan Nagar, \nCoimbatore.TamilNadu - 641041, India.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width / 5,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "+91-96777 04249, +91-90428 95697 \ninfo@graphifyinfotech.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/facebook.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/instagram.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/linkedin.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/twitter.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Footermobile extends StatelessWidget {
  const Footermobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/footerbgmobile.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/Graphifylogo.png"),
                SizedBox(height: 30),
                Text(
                  "Graphify offer various kinds of products and services to the public and business firms to boost up their portfolio level. We nurture personal growth for our team by creating a challenging environment with opportunities.",
                  textAlign: TextAlign.justify,

                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Quick Navigations",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                  child: Text(
                    "About Us",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Servicespage()),
                    );
                  },
                  child: Text(
                    "Services",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContactUs()),
                    );
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsandCondition(),
                      ),
                    );
                  },
                  child: Text(
                    "Terms and Conditions",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                      height: 1.5,
                      fontWeight: FontWeight.bold,
                      fontFamily: GoogleFonts.inter().fontFamily,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Address",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Graphify Infotech,\n36D, Veerakeralam Road, \nVadavalli,Thirumurugan Nagar, \nCoimbatore.TamilNadu - 641041, India.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),

          Container(
            width: MediaQuery.of(context).size.width / 1,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact Us",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "+91-96777 04249, +91-90428 95697 \ninfo@graphifyinfotech.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/facebook.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/instagram.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/linkedin.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        "images/twitter.png",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
