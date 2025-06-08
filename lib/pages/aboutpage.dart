
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphify_website/divs/aboutushmv.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/pages/servicespage.dart';
import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: 70),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          HeadingText(headingtext: "About Us"),
                          SizedBox(height: 20),

                          ParagraphTexts(
                            contenttext:
                                "Welcome to Graphify Infotech! We're a dynamic and innovative company specializing in bringing your digital vision to life. With a dedicated team of 10-15 passionate experts, we offer comprehensive solutions to elevate your online presence and drive business growth.At Graphify Infotech, we excel in web and mobile app development, crafting bespoke, user-friendly, and high-performing digital experiences tailored to your unique needs. Beyond development, our robust digital marketing services encompass everything you need to stand out in a crowded marketplace. We're masters of SEO, ensuring your brand ranks high and is easily discoverable. Our social media management strategies build engaging communities around your brand, while our expert branding services forge a strong, memorable identity that resonates with your audience. Partner with us and let's graph your success together!",
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Servicespage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              backgroundColor: Colors.lightBlueAccent
                                  .withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: Text(
                              "Our Services",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.nunitoSans().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/aboutusimage.png?updatedAt=1749366005449",
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.height / 1.2,
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Aboutushmv(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/history.png?updatedAt=1749366014411",
                      textheading: "Our History",
                      textcontent:
                          "To be client-centric, technology-driven, adaptive, innovative and creative in our approach for attaining excellence and promoting profitability for our clients and ourselves by delivering best IT solutions and its successful implementation",
                      manualheight: 1.2,
                      manualwidth: 4,
                      imageres: 150,
                    ),
                    Aboutushmv(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/mission.png?updatedAt=1749366042357",
                      textheading: "Our Mission",
                      textcontent:
                          "To be admired as an organization with integrity , ethical in its conduct, professional in its approach, complete dedication and providing cost effective, surpassing their expectations,enhancing their revenues at the same time.",
                      manualheight: 1.2,
                      manualwidth: 4,
                      imageres: 150,
                    ),
                    Aboutushmv(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/vision.png?updatedAt=1749366074339",
                      textheading: "Our Vision",
                      textcontent:
                          "To be client-centric, technology-driven, adaptive, innovative and creative in our approach for attaining excellence and promoting profitability for our clients and ourselves by delivering best IT solutions and its successful implementation",
                      manualheight: 1.2,
                      manualwidth: 4,
                      imageres: 150,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: HeadingText(headingtext: "Why Choose Us"),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/whychooseus.png?updatedAt=1749366088495",
                      height: 600,
                      width: 400,
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Aboutushmv(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/quality.png?updatedAt=1749366043894",
                                textheading: "Quality Products",
                                textcontent:
                                    "Providing secure and quality products to all your business.",
                                manualheight: 3,
                                manualwidth: 5,
                                imageres: 50,
                              ),
                              Aboutushmv(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/support.png?updatedAt=1749366058715",
                                textheading: "Customer Friendly",
                                textcontent:
                                    "Helping Customers to meet their requirments and ideas.",
                                manualheight: 3,
                                manualwidth: 5,
                                imageres: 50,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Aboutushmv(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/time.png?updatedAt=1749366068949",
                                textheading: "Timely Delivery",
                                textcontent:
                                    "Ensuring quality, accuracy and reliability of deliverables",
                                manualheight: 3,
                                manualwidth: 5,
                                imageres: 50,
                              ),
                              Aboutushmv(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/rocket.png?updatedAt=1749366051210",
                                textheading: "Innovation",
                                textcontent:
                                    "Trying new approaches to solve problems in all ways.",
                                manualheight: 3,
                                manualwidth: 5,
                                imageres: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Aboutushmvwithbtn(
                          imgurl:
                              "https://ik.imagekit.io/rrkrish13112001/images/questions.png?updatedAt=1749366049678",
                          textheading: "Have any question about us?",
                          textcontent: "Don't hesitate to contact us",
                          manualheight: 4,
                          manualwidth: 2,
                          imageres: 100,
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
        )
        : Scaffold(
          appBar: MobileAppBar(title: "About Us"),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.network(
                            "https://ik.imagekit.io/rrkrish13112001/images/aboutusimage.png?updatedAt=1749366005449",
                            width: MediaQuery.of(context).size.width / 1,
                            height: MediaQuery.of(context).size.height / 2,
                          ),
                          SizedBox(height: 10),

                          ParagraphTextforMobile(
                            contenttext:
                                "Welcome to Graphify Infotech! We're a dynamic and innovative company specializing in bringing your digital vision to life. With a dedicated team of 10-15 passionate experts, we offer comprehensive solutions to elevate your online presence and drive business growth.At Graphify Infotech, we excel in web and mobile app development, crafting bespoke, user-friendly, and high-performing digital experiences tailored to your unique needs. Beyond development, our robust digital marketing services encompass everything you need to stand out in a crowded marketplace. We're masters of SEO, ensuring your brand ranks high and is easily discoverable. Our social media management strategies build engaging communities around your brand, while our expert branding services forge a strong, memorable identity that resonates with your audience. Partner with us and let's graph your success together!",
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Servicespage(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              backgroundColor: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: Text(
                              "Our Services",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.nunitoSans().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Aboutushmvmobileview(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/history.png?updatedAt=1749366014411",
                      textheading: "Our History",
                      textcontent:
                          "To be client-centric, technology-driven, adaptive, innovative and creative in our approach for attaining excellence and promoting profitability for our clients and ourselves by delivering best IT solutions and its successful implementation",
                      manualheight: 1.5,
                      manualwidth: 1.2,
                      imageres: 150,
                    ),
                    SizedBox(height: 20),
                    Aboutushmvmobileview(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/mission.png?updatedAt=1749366042357",
                      textheading: "Our Mission",
                      textcontent:
                          "To be admired as an organization with integrity , ethical in its conduct, professional in its approach, complete dedication and providing cost effective, surpassing their expectations,enhancing their revenues at the same time.",
                      manualheight: 1.5,
                      manualwidth: 1.2,
                      imageres: 150,
                    ),
                    SizedBox(height: 20),

                    Aboutushmvmobileview(
                      imgurl:
                          "https://ik.imagekit.io/rrkrish13112001/images/vision.png?updatedAt=1749366074339",
                      textheading: "Our Vision",
                      textcontent:
                          "To be client-centric, technology-driven, adaptive, innovative and creative in our approach for attaining excellence and promoting profitability for our clients and ourselves by delivering best IT solutions and its successful implementation",
                      manualheight: 1.5,
                      manualwidth: 1.2,
                      imageres: 150,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  child: HeadingText(headingtext: "Why Choose Us"),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/whychooseus.png?updatedAt=1749366088495",
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width / 1.1,
                    ),
                    Container(
                      padding: EdgeInsets.all(30),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Aboutushmvmobileview(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/quality.png?updatedAt=1749366043894",
                                textheading: "Quality Products",
                                textcontent:
                                    "Providing secure and quality products to all your business.",
                                manualheight: 4,
                                manualwidth: 1.2,
                                imageres: 50,
                              ),
                              SizedBox(height: 20),
                              Aboutushmvmobileview(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/support.png?updatedAt=1749366058715",
                                textheading: "Customer Friendly",
                                textcontent:
                                    "Helping Customers to meet their requirments and ideas.",
                                manualheight: 4,
                                manualwidth: 1.2,
                                imageres: 50,
                              ),
                              SizedBox(height: 20),
                              Aboutushmvmobileview(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/time.png?updatedAt=1749366068949",
                                textheading: "Timely Delivery",
                                textcontent:
                                    "Ensuring quality, accuracy and reliability of deliverables",
                                manualheight: 4,
                                manualwidth: 1.2,
                                imageres: 50,
                              ),
                              SizedBox(height: 20),
                              Aboutushmvmobileview(
                                imgurl:
                                    "https://ik.imagekit.io/rrkrish13112001/images/rocket.png?updatedAt=1749366051210",
                                textheading: "Innovation",
                                textcontent:
                                    "Trying new approaches to solve problems in all ways.",
                                manualheight: 4,
                                manualwidth: 1.2,
                                imageres: 50,
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Aboutushmvwithbtnformobile(
                          imgurl:
                              "https://ik.imagekit.io/rrkrish13112001/images/questions.png?updatedAt=1749366049678",
                          textheading: "Have any question about us?",
                          textcontent: "Don't hesitate to contact us",
                          manualheight: 2.5,
                          manualwidth: 1,
                          imageres: 100,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Footermobile(),
              ],
            ),
          ),
          drawer: DrawerWidget(),
        );
  }
}
