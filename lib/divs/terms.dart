import 'package:flutter/material.dart';
import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';
import 'package:graphify_website/texts/subheading.dart';

class Termscontent extends StatelessWidget {
  final String headingtext;
  final String contenttext;
  const Termscontent({
    super.key,
    required this.headingtext,
    required this.contenttext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Subheading(subheading: headingtext),
          ParagraphTexts(contenttext: contenttext),
        ],
      ),
    );
  }
}

class Termscontentformobile extends StatelessWidget {
  final String headingtext;
  final String contenttext;
  const Termscontentformobile({
    super.key,
    required this.headingtext,
    required this.contenttext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Headingformobile(headingtext: headingtext),
          SizedBox(height: 20),
          ParagraphTextforMobile(contenttext: contenttext),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
