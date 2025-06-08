// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParagraphTexts extends StatelessWidget {
  final String contenttext;
  const ParagraphTexts({super.key, required this.contenttext});

  @override
  Widget build(BuildContext context) {
    return Text(
      contenttext,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[700],
        height: 2,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

class Homepageparagraph extends StatelessWidget {
  final String contenttext;

  const Homepageparagraph({super.key, required this.contenttext});

  @override
  Widget build(BuildContext context) {
    return Text(
      contenttext,
      style: TextStyle(
        fontSize: 24,
        color: Colors.grey[100],
        height: 2,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

class Homepageslashcontent extends StatelessWidget {
  final String contenttext;
  const Homepageslashcontent({Key? key, required this.contenttext})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      contenttext,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[300],
        height: 2,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

class ParagraphTextforMobile extends StatelessWidget {
  final String contenttext;
  const ParagraphTextforMobile({Key? key, required this.contenttext})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      contenttext,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[700],
        height: 2,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      textAlign: TextAlign.justify,
    );
  }
}

class HomepageContentForMobile extends StatelessWidget {
  final String contenttext;
  const HomepageContentForMobile({Key? key, required this.contenttext})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      contenttext,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[300],
        height: 2,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
