// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphify_website/pages/contactpage.dart';

class Aboutushmv extends StatelessWidget {
  final String imgurl;
  final String textheading;
  final String textcontent;
  final double manualheight;
  final double manualwidth;
  final double imageres;
  const Aboutushmv({
    super.key,
    required this.imgurl,
    required this.textheading,
    required this.textcontent,
    required this.manualheight,
    required this.manualwidth,
    required this.imageres,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / manualwidth,
      height: MediaQuery.of(context).size.height / manualheight,
      decoration: BoxDecoration(
        color: Colors.cyanAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imgurl,
            fit: BoxFit.cover,
            width: imageres,
            height: imageres,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textheading,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.nunitoSans().fontFamily,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width /
                    4, // Adjust width to fit text
                child: Text(
                  textcontent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}

class Aboutushmvwithbtnformobile extends StatelessWidget {
  final String imgurl;
  final String textheading;
  final String textcontent;
  final double manualheight;
  final double manualwidth;
  final double imageres;
  const Aboutushmvwithbtnformobile({
    super.key,
    required this.imgurl,
    required this.textheading,
    required this.textcontent,
    required this.manualheight,
    required this.manualwidth,
    required this.imageres,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width / manualwidth,
      height: MediaQuery.of(context).size.height / manualheight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imgurl,
            fit: BoxFit.cover,
            width: imageres,
            height: imageres,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textheading,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.nunitoSans().fontFamily,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width /
                    1, // Adjust width to fit text
                child: Text(
                  textcontent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10),
              backgroundColor: Colors.blueGrey.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.nunitoSans().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Aboutushmvwithbtn extends StatelessWidget {
  final String imgurl;
  final String textheading;
  final String textcontent;
  final double manualheight;
  final double manualwidth;
  final double imageres;

  const Aboutushmvwithbtn({
    super.key,
    required this.imgurl,
    required this.textheading,
    required this.textcontent,
    required this.manualheight,
    required this.manualwidth,
    required this.imageres,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / manualwidth,
      height: MediaQuery.of(context).size.height / manualheight,
      decoration: BoxDecoration(
        color: Colors.deepPurpleAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imgurl,
            fit: BoxFit.cover,
            width: imageres,
            height: imageres,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textheading,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.nunitoSans().fontFamily,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width /
                    4, // Adjust width to fit text
                child: Text(
                  textcontent,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContactUs()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              backgroundColor: Colors.lightGreenAccent.withOpacity(0.1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.nunitoSans().fontFamily,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Aboutushmvmobileview extends StatelessWidget {
  final String imgurl;
  final String textheading;
  final String textcontent;
  final double manualheight;
  final double manualwidth;
  final double imageres;
  const Aboutushmvmobileview({
    super.key,
    required this.imgurl,
    required this.textheading,
    required this.textcontent,
    required this.manualheight,
    required this.manualwidth,
    required this.imageres,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / manualwidth,
      height: MediaQuery.of(context).size.height / manualheight,
      decoration: BoxDecoration(
        color: Colors.cyanAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            imgurl,
            fit: BoxFit.cover,
            width: imageres,
            height: imageres,
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textheading,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.nunitoSans().fontFamily,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width:
                    MediaQuery.of(context).size.width /
                    1.5, // Adjust width to fit text
                child: Text(
                  textcontent,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[700],
                    height: 2.5,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
