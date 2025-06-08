import 'package:flutter/material.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/terms.dart';
import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';

class Privacypolicy extends StatefulWidget {
  const Privacypolicy({super.key});

  @override
  State<Privacypolicy> createState() => _PrivacypolicyState();
}

class _PrivacypolicyState extends State<Privacypolicy> {
  final DateTime now = DateTime.now();
  final Uri websiteUrl = Uri.parse("https://graphifyinfotech.com");
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: MediaQuery.of(context).size.height * 0.1),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HeadingText(headingtext: 'Privacy Policy'),
                            SizedBox(height: 20),
                            ParagraphTexts(
                              contenttext:
                                  "Effective Date: ${now.toString().split(' ')[0]} \nWebsite: $websiteUrl",
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ParagraphTexts(
                          contenttext:
                              "At Graphify Infotech, your privacy is important to us. This Privacy Policy outlines how we collect, use, and protect your information.",
                        ),
                      ],
                    ),
                  ),
                  Termscontent(
                    headingtext: "Information We Collect\n",
                    contenttext:
                        '•	Personal Information: Name, email address, phone number, company details (when filling forms or registering). \n•	Usage Data: IP address, browser type, pages visited, time spent on our site. \n•	Cookies: We use cookies for better user experience and analytics.',
                  ),
                  Termscontent(
                    headingtext: "How We Use Your Information\n",
                    contenttext:
                        '•	To respond to inquiries or requests \n•	To send service-related communications and updates \n•	For internal analysis to improve our services \n•	For promotional campaigns (only with your consent) \n',
                  ),
                  Termscontent(
                    headingtext: "Data Security",
                    contenttext:
                        '''We implement industry-standard security practices, including encryption, firewalls, and secure servers to protect your data.''',
                  ),
                  Termscontent(
                    headingtext: "Third-Party Sharing",
                    contenttext:
                        '''We do not sell or rent your personal data. We may share data with trusted partners only to fulfill services or as required by law.''',
                  ),
                  Termscontent(
                    headingtext: "Your Rights",
                    contenttext:
                        '•	Request access to or correction of your data \n•	Opt-out of marketing communications \n•	Request deletion of personal data (subject to legal obligations) \n',
                  ),
                  Termscontent(
                    headingtext: "Contact Us",
                    contenttext:
                        'If you have any questions regarding your privacy, please contact: \n📧 Email: info@graphifyinfotech.com \n📞 Phone: +91 96777 04249 \n',
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        )
        : Scaffold(
          appBar: MobileAppBar(title: "Privacy Policy"),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              "images/privacy.png",
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
                                  "At Graphify Infotech, your privacy is important to us. This Privacy Policy outlines how we collect, use, and protect your information.",
                            ),
                          ],
                        ),
                      ),
                      Termscontent(
                        headingtext: "Information We Collect\n",
                        contenttext:
                            '•	Personal Information: Name, email address, phone number, company details (when filling forms or registering). \n•	Usage Data: IP address, browser type, pages visited, time spent on our site. \n•	Cookies: We use cookies for better user experience and analytics.',
                      ),
                      Termscontent(
                        headingtext: "How We Use Your Information\n",
                        contenttext:
                            '•	To respond to inquiries or requests \n•	To send service-related communications and updates \n•	For internal analysis to improve our services \n•	For promotional campaigns (only with your consent) \n',
                      ),
                      Termscontent(
                        headingtext: "Data Security",
                        contenttext:
                            '''We implement industry-standard security practices, including encryption, firewalls, and secure servers to protect your data.''',
                      ),
                      Termscontent(
                        headingtext: "Third-Party Sharing",
                        contenttext:
                            '''We do not sell or rent your personal data. We may share data with trusted partners only to fulfill services or as required by law.''',
                      ),
                      Termscontent(
                        headingtext: "Your Rights",
                        contenttext:
                            '•	Request access to or correction of your data \n•	Opt-out of marketing communications \n•	Request deletion of personal data (subject to legal obligations) \n',
                      ),
                      Termscontent(
                        headingtext: "Contact Us",
                        contenttext:
                            'If you have any questions regarding your privacy, please contact: \n📧 Email: info@graphifyinfotech.com \n📞 Phone: +91 96777 04249 \n',
                      ),
                    ],
                  ),
                ),
                Footermobile(),
              ],
            ),
          ),

          drawer: DrawerWidget(),
        );
  }
}
