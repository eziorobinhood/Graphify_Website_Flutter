// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Servicespagediv extends StatelessWidget {
  final String headingtext;
  final String contenttext;
  final String imageurl;
  final String iconurl;
  const Servicespagediv({
    Key? key,
    required this.headingtext,
    required this.contenttext,
    required this.imageurl,
    required this.iconurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
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
        children: [
          ExpansionTile(
            title: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                headingtext,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            leading: Image.asset(iconurl, width: 50, height: 50),
            children: [
              Image.asset(imageurl, width: 150, height: 150),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  contenttext,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Servicesdivformobile extends StatelessWidget {
  final String headingtext;
  final String contenttext;
  final String imageurl;
  final String iconurl;
  const Servicesdivformobile({
    super.key,
    required this.headingtext,
    required this.contenttext,
    required this.imageurl,
    required this.iconurl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      width: MediaQuery.of(context).size.width / 1.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0),
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
        children: [
          ExpansionTile(
            title: Container(
              padding: EdgeInsets.all(20),
              child: Text(
                headingtext,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: GoogleFonts.inter().fontFamily,
                ),
              ),
            ),
            leading: Image.asset(iconurl, width: 30, height: 30),
            children: [
              Image.asset(imageurl, width: 150, height: 150),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  contenttext,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 2,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
