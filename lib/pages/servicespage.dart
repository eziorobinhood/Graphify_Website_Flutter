import 'package:flutter/material.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/servicespagediv.dart';

import 'package:graphify_website/texts/heading.dart';

class Servicespage extends StatefulWidget {
  const Servicespage({super.key});

  @override
  State<Servicespage> createState() => _ServicespageState();
}

class _ServicespageState extends State<Servicespage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: 70),
          body: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),

                  HeadingText(headingtext: "Services"),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        "https://ik.imagekit.io/rrkrish13112001/images/services.png?updatedAt=1749366068093",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 1,
                      ),
                      SizedBox(height: 50),
                      Column(
                        children: [
                          Servicespagediv(
                            headingtext: "Web Development",
                            contenttext:
                                "Web development can range from developing the simplest static single page of plain text to the most complex web-based and social network services.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/Webdev.jpg?updatedAt=1749366079140",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/web.png?updatedAt=1749366086589",
                          ),
                          SizedBox(height: 30),

                          Servicespagediv(
                            headingtext: "Mobile App Development",
                            contenttext:
                                "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/mad.jpg?updatedAt=1749366035807",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/appdev.png?updatedAt=1749366077824",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Digital Marketing",
                            contenttext:
                                "Providing platform subject to experience with powerful cycle of project development with cost effective and time frame.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/digimarket.jpg?updatedAt=1749366010461",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/digitalmarketing.png?updatedAt=1749366077862",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Branding",
                            contenttext:
                                "We manage the overall promotional activities, listings outside the website, content distribution, quality link building, product or service reviews etc.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/branding.jpg?updatedAt=1749365998915",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/brand.png?updatedAt=1749366078039",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Search Engine Optimization",
                            contenttext:
                                "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/SEO.jpg?updatedAt=1749366054507",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/seo.png?updatedAt=1749366085928",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Social Media Management",
                            contenttext:
                                "We help you build and maintain a strong presence across social media platforms, engaging your audience and growing your brand online.",
                            imageurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/SMM.jpg?updatedAt=1749366062049",
                            iconurl:
                                "https://ik.imagekit.io/rrkrish13112001/images/icons/socialmedia.png?updatedAt=1749366086124",
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Footer(),
                ],
              ),
            ),
          ),
        )
        : Scaffold(
          appBar: MobileAppBar(title: "Services"),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  "https://ik.imagekit.io/rrkrish13112001/images/services.png?updatedAt=1749366068093",
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    Servicesdivformobile(
                      headingtext: "Web Development",
                      contenttext:
                          "Web development can range from developing the simplest static single page of plain text to the most complex web-based and social network services.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/Webdev.jpg?updatedAt=1749366079140",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/web.png?updatedAt=1749366086589",
                    ),
                    SizedBox(height: 30),

                    Servicesdivformobile(
                      headingtext: "Mobile App Development",
                      contenttext:
                          "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/mad.jpg?updatedAt=1749366035807",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/appdev.png?updatedAt=1749366077824",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Digital Marketing",
                      contenttext:
                          "Providing platform subject to experience with powerful cycle of project development with cost effective and time frame.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/digimarket.jpg?updatedAt=1749366010461",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/digitalmarketing.png?updatedAt=1749366077862",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Branding",
                      contenttext:
                          "We manage the overall promotional activities, listings outside the website, content distribution, quality link building, product or service reviews etc.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/branding.jpg?updatedAt=1749365998915",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/brand.png?updatedAt=1749366078039",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Search Engine Optimization",
                      contenttext:
                          "Boost your website’s visibility and ranking on search engines with our expert SEO services. We use proven strategies including keyword optimization, quality content creation, and technical enhancements to drive organic traffic and help your business reach its target audience effectively.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/SEO.jpg?updatedAt=1749366054507",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/seo.png?updatedAt=1749366085928",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Social Media Management",
                      contenttext:
                          "We help you build and maintain a strong presence across social media platforms, engaging your audience and growing your brand online.",
                      imageurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/SMM.jpg?updatedAt=1749366062049",
                      iconurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/socialmedia.png?updatedAt=1749366086124",
                    ),
                  ],
                ),
                Footermobile(),
              ],
            ),
          ),
          drawer: DrawerWidget(),
        );
  }
}
