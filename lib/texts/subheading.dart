// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Subheading extends StatelessWidget {
  final String subheading;
  const Subheading({super.key, required this.subheading});

  @override
  Widget build(BuildContext context) {
    return Text(
      subheading,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.inter().fontFamily,
        color: Colors.black,
      ),
    );
  }
}

class Subheadingformobile extends StatelessWidget {
  final String subheading;
  const Subheadingformobile({Key? key, required this.subheading})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subheading,
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        fontFamily: GoogleFonts.inter().fontFamily,
        color: Colors.black,
      ),
    );
  }
}
