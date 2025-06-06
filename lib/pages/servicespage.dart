import 'package:flutter/material.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/servicespagediv.dart';
import 'package:graphify_website/home.dart';
import 'package:graphify_website/pages/aboutpage.dart';
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
                      Image.asset(
                        "images/services.png",
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
                            imageurl: "images/Webdev.jpg",
                            iconurl: "images/icons/web.png",
                          ),
                          SizedBox(height: 30),

                          Servicespagediv(
                            headingtext: "Mobile App Development",
                            contenttext:
                                "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                            imageurl: "images/mad.jpg",
                            iconurl: "images/icons/appdev.png",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Digital Marketing",
                            contenttext:
                                "Providing platform subject to experience with powerful cycle of project development with cost effective and time frame.",
                            imageurl: "images/digimarket.jpg",
                            iconurl: "images/icons/digitalmarketing.png",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Branding",
                            contenttext:
                                "We manage the overall promotional activities, listings outside the website, content distribution, quality link building, product or service reviews etc.",
                            imageurl: "images/branding.jpg",
                            iconurl: "images/icons/brand.png",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Search Engine Optimization",
                            contenttext:
                                "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                            imageurl: "images/SEO.jpg",
                            iconurl: "images/icons/seo.png",
                          ),
                          SizedBox(height: 30),
                          Servicespagediv(
                            headingtext: "Social Media Management",
                            contenttext:
                                "We help you build and maintain a strong presence across social media platforms, engaging your audience and growing your brand online.",
                            imageurl: "images/SMM.jpg",
                            iconurl: "images/icons/socialmedia.png",
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
                Image.asset(
                  "images/servicesmob.png",
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
                      imageurl: "images/Webdev.jpg",
                      iconurl: "images/icons/web.png",
                    ),
                    SizedBox(height: 30),

                    Servicesdivformobile(
                      headingtext: "Mobile App Development",
                      contenttext:
                          "Our skilled mobile app designers with talent in design field create exquisite apps will make solid impression among clients.",
                      imageurl: "images/mad.jpg",
                      iconurl: "images/icons/appdev.png",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Digital Marketing",
                      contenttext:
                          "Providing platform subject to experience with powerful cycle of project development with cost effective and time frame.",
                      imageurl: "images/digimarket.jpg",
                      iconurl: "images/icons/digitalmarketing.png",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Branding",
                      contenttext:
                          "We manage the overall promotional activities, listings outside the website, content distribution, quality link building, product or service reviews etc.",
                      imageurl: "images/branding.jpg",
                      iconurl: "images/icons/brand.png",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Search Engine Optimization",
                      contenttext:
                          "Boost your website’s visibility and ranking on search engines with our expert SEO services. We use proven strategies including keyword optimization, quality content creation, and technical enhancements to drive organic traffic and help your business reach its target audience effectively.",
                      imageurl: "images/SEO.jpg",
                      iconurl: "images/icons/seo.png",
                    ),
                    SizedBox(height: 30),
                    Servicesdivformobile(
                      headingtext: "Social Media Management",
                      contenttext:
                          "We help you build and maintain a strong presence across social media platforms, engaging your audience and growing your brand online.",
                      imageurl: "images/SMM.jpg",
                      iconurl: "images/icons/socialmedia.png",
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
