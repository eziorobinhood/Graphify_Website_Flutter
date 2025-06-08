import 'package:flutter/material.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/company_tweaks.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/interested.dart';
import 'package:graphify_website/divs/makesspecial.dart';
import 'package:graphify_website/divs/services.dart';

import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';
import 'package:graphify_website/texts/subheading.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: 70),

          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://ik.imagekit.io/rrkrish13112001/images/homebg.png?updatedAt=1749366038930",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(100.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: Homepageparagraph(
                                contenttext:
                                    'We are a team of dedicated professionals committed to providing you with the best service possible. Our goal is to ensure your satisfaction and help you achieve your objectives.',
                              ),
                            ),
                            SizedBox(height: 20),
                            Homepageslashcontent(
                              contenttext:
                                  "Softwares | Digital Marketing | Education",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                //End of the first section -----------------------------------------------------------------------------------
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/aboutimage.png?updatedAt=1749366009642",
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 1.5,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                              0,
                              3,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: HeadingText(
                              headingtext: "About Graphify Infotech",
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2,
                            padding: const EdgeInsets.all(20.0),
                            child: ParagraphTexts(
                              contenttext:
                                  "Graphify Infotech, nestled in the vibrant tech hub of Coimbatore, is your dedicated partner in navigating the digital landscape. We empower businesses with bespoke web development, creating captivating online experiences. Reach your mobile audience with our expertly crafted Android and iOS applications, designed for seamless user engagement. Beyond development, we fuel your growth through strategic digital marketing and potent SEO techniques, ensuring you stand out in the crowded online world. Unlock the potential of knowledge sharing with our innovative and user-friendly E-learning platforms. At Graphify Infotech, we blend creativity with technical expertise to transform your digital aspirations into tangible success stories. Let's architect your future, one digital solution at a time.",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                // Company Tweaks Section -----------------------------------------------------------------------------------
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CompanyTweaksDivs(
                          heading: "Technology Pioneers",
                          text:
                              "Our team of seasoned software engineering professionals stays ahead of emerging technologies, offering expertise in Software development.",

                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/tech_pioneer.png?updatedAt=1749366065329",
                        ),
                        SizedBox(width: 20),
                        CompanyTweaksDivs(
                          heading: "Tailored Engineering",
                          text:
                              "We recognize the unique challenges of each business and engineer customized software solutions to meet your specific requirements.",
                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/tailored_engineering.png?updatedAt=1749366064920",
                        ),
                        SizedBox(width: 20),
                        CompanyTweaksDivs(
                          heading: "Cost-Effective",
                          text:
                              "Our competitive pricing ensures that all businesses can benefit from cutting-edge technology solutions, not just those with extensive resources.",
                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/cost_effective.jpg?updatedAt=1749366004455",
                        ),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CompanyTweaksDivs(
                          heading: "Driven by Impact",
                          text:
                              "More than just problem-solvers, we are committed to leveraging our technological expertise to effect positive, transformative changes.",
                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/impact_driven.png?updatedAt=1749366021104",
                        ),
                        SizedBox(width: 20),
                        CompanyTweaksDivs(
                          heading: "Proven Reliability",
                          text:
                              "Our track record confirms our ability to help businesses of all sizes streamline operations, enhance decision-making, and increase productivity.",
                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/reliability.jpg?updatedAt=1749366054059",
                        ),
                        SizedBox(width: 20),
                        CompanyTweaksDivs(
                          heading: "Innovative Mindset",
                          text:
                              "Our agility and creative thinking allow us to continuously find new and effective ways to employ technology, to meet your needs.",
                          imageUrl:
                              "https://ik.imagekit.io/rrkrish13112001/images/innovation.jpg?updatedAt=1749366021589",
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                // Services Section -----------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          HeadingText(headingtext: "Our Services"),

                          SizedBox(height: 20),
                          Subheading(subheading: "Premium Solutions Suite"),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              ServicesDivs(
                                divtext: 'Web Development',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/web.png?updatedAt=1749366086589",
                              ),
                              SizedBox(width: 20),
                              ServicesDivs(
                                divtext: 'Mobile App Development',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/appdev.png?updatedAt=1749366077824",
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              ServicesDivs(
                                divtext: 'Digital Marketing',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/digitalmarketing.png?updatedAt=1749366077862",
                              ),
                              SizedBox(width: 20),
                              ServicesDivs(
                                divtext: 'Branding',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/brand.png?updatedAt=1749366078039",
                              ),
                            ],
                          ),

                          SizedBox(height: 20),
                          Row(
                            children: [
                              ServicesDivs(
                                divtext: 'Search Engine Optimization',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/seo.png?updatedAt=1749366085928",
                              ),
                              SizedBox(width: 20),
                              ServicesDivs(
                                divtext: 'Social Media Management',
                                networkURL:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/socialmedia.png?updatedAt=1749366086124",
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(width: 50),
                      Image.network(
                        "https://i.ibb.co/DfJXGx4B/gradient-devops-illustration.png",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 2,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),
                // What makes us special Section -----------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HeadingText(headingtext: "What Makes Us Special"),
                      SizedBox(height: 20),

                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MakesSpecial(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/team.png?updatedAt=1749366086526",
                                textheading: "Highly Qualified Team",
                                textcontent:
                                    "We have a highly qualified team to help our customers to meet their expectations and requirements.",
                              ),
                              SizedBox(width: 20),
                              MakesSpecial(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/targeting.png?updatedAt=1749366087041",
                                textheading: "Customer-Centric Approach",
                                textcontent:
                                    "We prioritize our customers' needs and work closely with them to deliver tailored solutions.",
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MakesSpecial(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/shield.png?updatedAt=1749366085637",
                                textheading: "Security and Reliability",
                                textcontent:
                                    "We prioritize security and reliability in all our solutions, ensuring your data is safe and your systems are dependable.",
                              ),
                              SizedBox(width: 20),
                              MakesSpecial(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/icons/established.png?updatedAt=1749366080733",
                                textheading: "Proven Track Record",
                                textcontent:
                                    "Our proven track record of successful projects speaks for our commitment to excellence.",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                // Interested in Graphify Section -----------------------------------------------------------------------------------
                InterestedinGraphify(),
                SizedBox(height: 50),
                // Footer --------------------------------------------------------------------------------------------
                Footer(),
              ],
            ),
          ),
        )
        : Scaffold(
          appBar: MobileAppBar(title: "Home"),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://ik.imagekit.io/rrkrish13112001/images/homemobile.jpg?updatedAt=1749366032834",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 1,
                              child: HomepageContentForMobile(
                                contenttext:
                                    'We are a team of dedicated professionals committed to providing you with the best service possible. Our goal is to ensure your satisfaction and help you achieve your objectives.',
                              ),
                            ),
                            SizedBox(height: 20),
                            Homepageslashcontent(
                              contenttext:
                                  "Softwares | Digital Marketing | Education",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/aboutimage.png?updatedAt=1749366009642",
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: MediaQuery.of(context).size.height / 2,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 50),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.indigoAccent.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(
                              0,
                              3,
                            ), // changes position of shadow
                          ),
                        ],
                      ),
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Headingformobile(
                              headingtext: "About Graphify Infotech",
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1,
                            padding: const EdgeInsets.all(20.0),
                            child: ParagraphTextforMobile(
                              contenttext:
                                  "Graphify Infotech, nestled in the vibrant tech hub of Coimbatore, is your dedicated partner in navigating the digital landscape. We empower businesses with bespoke web development, creating captivating online experiences. Reach your mobile audience with our expertly crafted Android and iOS applications, designed for seamless user engagement. Beyond development, we fuel your growth through strategic digital marketing and potent SEO techniques, ensuring you stand out in the crowded online world. Unlock the potential of knowledge sharing with our innovative and user-friendly E-learning platforms. At Graphify Infotech, we blend creativity with technical expertise to transform your digital aspirations into tangible success stories. Let's architect your future, one digital solution at a time.",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Column(
                  children: [
                    CompanyTweaksForMobile(
                      heading: "Technology Pioneers",
                      text:
                          "Our team of seasoned software engineering professionals stays ahead of emerging technologies, offering expertise in Software development.",

                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/tech_pioneer.png?updatedAt=1749366065329",
                    ),
                    SizedBox(height: 20),
                    CompanyTweaksForMobile(
                      heading: "Tailored Engineering",
                      text:
                          "We recognize the unique challenges of each business and engineer customized software solutions to meet your specific requirements.",
                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/tailored_engineering.png?updatedAt=1749366064920",
                    ),
                    SizedBox(height: 20),
                    CompanyTweaksForMobile(
                      heading: "Cost-Effective",
                      text:
                          "Our competitive pricing ensures that all businesses can benefit from cutting-edge technology solutions, not just those with extensive resources.",
                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/cost_effective.jpg?updatedAt=1749366004455",
                    ),
                    SizedBox(height: 20),
                    CompanyTweaksForMobile(
                      heading: "Driven by Impact",
                      text:
                          "More than just problem-solvers, we are committed to leveraging our technological expertise to effect positive, transformative changes.",
                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/impact_driven.png?updatedAt=1749366021104",
                    ),
                    SizedBox(height: 20),
                    CompanyTweaksForMobile(
                      heading: "Proven Reliability",
                      text:
                          "Our track record confirms our ability to help businesses of all sizes streamline operations, enhance decision-making, and increase productivity.",
                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/reliability.jpg?updatedAt=1749366054059",
                    ),
                    SizedBox(height: 20),
                    CompanyTweaksForMobile(
                      heading: "Innovative Mindset",
                      text:
                          "Our agility and creative thinking allow us to continuously find new and effective ways to employ technology, to meet your needs.",
                      imageUrl:
                          "https://ik.imagekit.io/rrkrish13112001/images/innovation.jpg?updatedAt=1749366021589",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Headingformobile(headingtext: "Our Services"),

                    SizedBox(height: 20),
                    Subheadingformobile(subheading: "Premium Solutions Suite"),
                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Web Development',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/web.png?updatedAt=1749366086589",
                    ),
                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Mobile App Development',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/appdev.png?updatedAt=1749366077824",
                    ),

                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Digital Marketing',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/digitalmarketing.png?updatedAt=1749366077862",
                    ),
                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Branding',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/brand.png?updatedAt=1749366078039",
                    ),

                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Search Engine Optimization',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/seo.png?updatedAt=1749366085928",
                    ),
                    SizedBox(height: 20),
                    Servicesformobile(
                      divtext: 'Social Media Management',
                      networkURL:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/socialmedia.png?updatedAt=1749366086124",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Headingformobile(headingtext: "What Makes Us Special:"),
                    SizedBox(height: 20),
                    MakesspecialforMobile(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/support.png?updatedAt=1749366058715",
                      textheading: "Customer Support",
                      textcontent:
                          "We are providing dedicated and easily accessible 24/7 customer support to all clients.",
                    ),
                    SizedBox(height: 20),
                    MakesspecialforMobile(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/established.png?updatedAt=1749366080733",
                      textheading: "Proven Track Record",
                      textcontent:
                          "Our proven track record of successful projects speaks for our commitment to excellence.",
                    ),
                    SizedBox(height: 20),
                    MakesspecialforMobile(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/icons/shield.png?updatedAt=1749366085637",
                      textheading: "Security and Reliability",
                      textcontent:
                          "We prioritize security and reliability in all our solutions, ensuring your data is safe and your systems are dependable.",
                    ),
                    SizedBox(height: 20),
                  ],
                ),
                InterestedinGraphifyforMobile(),
                Footermobile(),
              ],
            ),
          ),
          drawer: DrawerWidget(),
        );
  }
}
