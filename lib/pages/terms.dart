import 'package:flutter/material.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/terms.dart';
import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';

class TermsandCondition extends StatefulWidget {
  const TermsandCondition({super.key});

  @override
  State<TermsandCondition> createState() => _TermsandConditionState();
}

class _TermsandConditionState extends State<TermsandCondition> {
  final DateTime now = DateTime.now();
  final Uri websiteUrl = Uri.parse("https://graphifyinfotech.com");
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: MediaQuery.of(context).size.height * 0.1),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeadingText(headingtext: 'Terms & Conditions'),
                            SizedBox(height: 20),
                            ParagraphTexts(
                              contenttext:
                                  "Effective Date: ${now.toString().split(' ')[0]} \nWebsite: $websiteUrl",
                            ),
                            SizedBox(height: 20),
                            ParagraphTexts(
                              contenttext:
                                  "By using our website or services, you agree to the following Terms & Conditions:",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Termscontent(
                    headingtext: '1. Services Offered',
                    contenttext:
                        "Graphify Infotech provides digital marketing services and training programs. All services are subject to availability and client agreement.",
                  ),
                  Termscontent(
                    headingtext: '2. User Responsibilities',
                    contenttext:
                        '•	You agree not to misuse the site or services. \n•	You agree to provide accurate and complete information during inquiries or registration. ',
                  ),
                  Termscontent(
                    headingtext: '3. Intellectual Property',
                    contenttext:
                        'All content, including text, images, logos, and course materials, is the property of Graphify Infotech and may not be reproduced without permission.',
                  ),
                  Termscontent(
                    headingtext: '4. Payments and Refunds',
                    contenttext:
                        '•	All payments for services or training must be made in full before commencement. \n•	Refund policies vary by service or course and will be shared before enrollment.',
                  ),
                  Termscontent(
                    headingtext: '5. Limitation of Liability',
                    contenttext:
                        'We are not liable for any direct, indirect, or incidental damages arising from the use of our services or website.',
                  ),
                  Termscontent(
                    headingtext: '6. Modifications',
                    contenttext:
                        'We reserve the right to update these Terms & Conditions at any time. Continued use of the site implies acceptance of the updated terms.',
                  ),
                  Termscontent(
                    headingtext: '7. Governing Law',
                    contenttext:
                        'These terms are governed by the laws of India. Any disputes will be handled under the jurisdiction of Coimbatore, Tamil Nadu.',
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        )
        : Scaffold(
          appBar: MobileAppBar(title: "Terms & Conditions"),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "images/terms.png",
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(height: 20),
                      ParagraphTextforMobile(
                        contenttext:
                            "Effective Date: ${now.toString().split(' ')[0]} \nWebsite: $websiteUrl",
                      ),
                      SizedBox(height: 20),
                      ParagraphTextforMobile(
                        contenttext:
                            "By using our website or services, you agree to the following Terms & Conditions:",
                      ),
                    ],
                  ),
                ),

                Termscontentformobile(
                  headingtext: '1. Services Offered',
                  contenttext:
                      "Graphify Infotech provides digital marketing services and training programs. All services are subject to availability and client agreement.",
                ),
                Termscontentformobile(
                  headingtext: '2. User Responsibilities',
                  contenttext:
                      '• You agree not to misuse the site or services. \n• You agree to provide accurate and complete information during inquiries or registration. ',
                ),
                Termscontentformobile(
                  headingtext: '3. Intellectual Property',
                  contenttext:
                      'All content, including text, images, logos, and course materials, is the property of Graphify Infotech and may not be reproduced without permission.',
                ),
                Termscontentformobile(
                  headingtext: '4. Payments and Refunds',
                  contenttext:
                      '•	All payments for services or training must be made in full before commencement. \n•	Refund policies vary by service or course and will be shared before enrollment.',
                ),
                Termscontentformobile(
                  headingtext: '5. Limitation of Liability',
                  contenttext:
                      'We are not liable for any direct, indirect, or incidental damages arising from the use of our services or website.',
                ),
                Termscontentformobile(
                  headingtext: '6. Modifications',
                  contenttext:
                      'We reserve the right to update these Terms & Conditions at any time. Continued use of the site implies acceptance of the updated terms.',
                ),
                Termscontentformobile(
                  headingtext: '7. Governing Law',
                  contenttext:
                      'These terms are governed by the laws of India. Any disputes will be handled under the jurisdiction of Coimbatore, Tamil Nadu.',
                ),
                Footermobile(),
              ],
            ),
          ),
          drawer: DrawerWidget(),
        );
  }
}
