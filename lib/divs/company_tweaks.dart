// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompanyTweaksDivs extends StatelessWidget {
  final String heading;
  final String text;
  final String imageUrl;
  const CompanyTweaksDivs({
    super.key,
    required this.heading,
    required this.text,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
      width: MediaQuery.of(context).size.width / 3.5,
      height: MediaQuery.of(context).size.height / 1.2,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imageUrl, width: 200, height: 200),
          const SizedBox(height: 20),
          Text(
            heading,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              height: 2.5,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}

class CompanyTweaksForMobile extends StatelessWidget {
  final String imageUrl;
  final String heading;
  final String text;
  const CompanyTweaksForMobile({
    Key? key,
    required this.imageUrl,
    required this.heading,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
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
      width: MediaQuery.of(context).size.width / 1.2,
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imageUrl, width: 100, height: 100),
          const SizedBox(height: 20),
          Text(
            heading,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[700],
              fontWeight: FontWeight.bold,
              height: 2.5,
              fontFamily: GoogleFonts.inter().fontFamily,
            ),
          ),
        ],
      ),
    );
  }
}
