// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatelessWidget {
  final String headingtext;
  const HeadingText({super.key, required this.headingtext});

  @override
  Widget build(BuildContext context) {
    return Text(
      headingtext,
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
    );
  }
}

class Headingformobile extends StatelessWidget {
  final String headingtext;
  const Headingformobile({Key? key, required this.headingtext})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headingtext,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: GoogleFonts.nunitoSans().fontFamily,
      ),
    );
  }
}
