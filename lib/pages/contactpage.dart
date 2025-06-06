import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphify_website/divs/aboutushmv.dart';
import 'package:graphify_website/divs/appbar.dart';
import 'package:graphify_website/divs/drawer.dart';
import 'package:graphify_website/divs/footer.dart';
import 'package:graphify_website/divs/textform.dart';
import 'package:graphify_website/texts/heading.dart';
import 'package:graphify_website/texts/paragraph.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController name = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController mail = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();

  Future<void> _sendEmail() async {
    final String namesend = name.text.trim();
    final String emailsend = mail.text.trim();
    final String messagesend = message.text.trim();

    // Define the recipient email address
    const String recipientEmail =
        'your.company@example.com'; // CHANGE THIS TO YOUR RECIPIENT EMAIL

    // Construct the subject
    final String subject = 'New Message from Web Contact Form - By $name';

    // Construct the email body
    final String body = '''
Name: $namesend
Email: $emailsend

Message:
$messagesend
''';

    // Encode subject and body for URL safety
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: recipientEmail,
      queryParameters: {
        'subject': Uri.encodeComponent(subject),
        'body': Uri.encodeComponent(body),
      },
    );

    // Attempt to launch the email client
    try {
      // For web, LaunchMode.platformDefault or LaunchMode.externalApplication often yield similar results.
      // LaunchMode.platformDefault might open a new browser tab for webmail.
      // LaunchMode.externalApplication might try to open a desktop mail client.
      if (await canLaunchUrl(emailLaunchUri)) {
        await launchUrl(emailLaunchUri, mode: LaunchMode.platformDefault);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Could not open email client. Ensure one is configured or try a different browser.',
            ),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error launching email: $e')));
    }
  }

  @override
  void dispose() {
    name.dispose();
    mail.dispose();
    message.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 768
        ? Scaffold(
          appBar: Appbar(height: 70),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: HeadingText(headingtext: "Contact Us"),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Aboutushmv(
                        imgurl: "https://iili.io/3yDjdEN.md.png",
                        textheading: "Drop us a Call",
                        textcontent: "+91-96777 04249 \n+91-90428 95697",
                        manualheight: 2.5,
                        manualwidth: 4,
                        imageres: 50,
                      ),
                      SizedBox(width: 30),
                      Aboutushmv(
                        imgurl: "https://iili.io/3yD8hfj.md.png",
                        textheading: "Send us a Mail",
                        textcontent: "info@graphifyinfotech.com",
                        manualheight: 2.5,
                        manualwidth: 4,
                        imageres: 50,
                      ),
                      SizedBox(width: 30),
                      Aboutushmv(
                        imgurl: "https://iili.io/3yDMRP1.md.png",
                        textheading: "Meet us at",
                        textcontent:
                            "Graphify Infotech, 36D, Veerakeralam Road, \nVadavalli,Thirumurugan Nagar, \nCoimbatore, TamilNadu - 641041, India.",
                        manualheight: 2.5,
                        manualwidth: 4,
                        imageres: 50,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          HeadingText(headingtext: "Get In Touch With Us"),
                          ParagraphTexts(
                            contenttext:
                                "Anything On your Mind. We’ll Be Glad To Assist You!",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "images/callpic.png",
                      height: MediaQuery.of(context).size.height / 1.5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Textformfield(
                            labeldata: "Name",
                            controller: name,
                            isMessagefield: false,
                          ),
                          Textformfield(
                            labeldata: "Phone Number",
                            controller: phonenumber,
                            isMessagefield: false,
                          ),
                          Textformfield(
                            labeldata: "Mail",
                            controller: mail,
                            isMessagefield: false,
                          ),
                          Textformfield(
                            labeldata: "Subject",
                            controller: subject,
                            isMessagefield: false,
                          ),
                          Textformfield(
                            labeldata: "Message",
                            controller: message,
                            isMessagefield: true,
                          ),

                          ElevatedButton(
                            onPressed: () {
                              _sendEmail();
                            },
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(20),
                              backgroundColor: Colors.lightBlueAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            child: Text(
                              "Send Message",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: GoogleFonts.inter().fontFamily,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Footer(),
              ],
            ),
          ),
        )
        : Scaffold(
          appBar: MobileAppBar(title: 'Contact Us'),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "images/contactimage.png",
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Aboutushmvmobileview(
                    imgurl: "images/call.png",
                    textheading: "Drop us a Call",
                    textcontent: "+91-96777 04249 \n+91-90428 95697",
                    manualheight: 4,
                    manualwidth: 1,
                    imageres: 50,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Aboutushmvmobileview(
                    imgurl: "images/email.png",
                    textheading: "Send us a Mail",
                    textcontent: "info@graphifyinfotech.com",
                    manualheight: 4,
                    manualwidth: 1,
                    imageres: 50,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Aboutushmvmobileview(
                    imgurl: "images/destination.png",
                    textheading: "Meet us at",
                    textcontent:
                        "Graphify Infotech, 36D, Veerakeralam Road, \nVadavalli,Thirumurugan Nagar, \nCoimbatore, TamilNadu - 641041, India.",
                    manualheight: 3,
                    manualwidth: 1,
                    imageres: 50,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Headingformobile(headingtext: "Get In Touch With Us"),
                      ParagraphTextforMobile(
                        contenttext:
                            "Anything On your Mind. We’ll Be Glad To Assist You!",
                      ),
                      Textformfield(
                        labeldata: "Name",
                        controller: name,
                        isMessagefield: false,
                      ),
                      Textformfield(
                        labeldata: "Mail",
                        controller: mail,
                        isMessagefield: false,
                      ),
                      Textformfield(
                        labeldata: "Phone Number",
                        controller: phonenumber,
                        isMessagefield: false,
                      ),
                      Textformfield(
                        labeldata: "Subject",
                        controller: subject,
                        isMessagefield: false,
                      ),
                      Textformfield(
                        labeldata: "Message",
                        controller: message,
                        isMessagefield: true,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          _sendEmail();
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.lightBlueAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                        ),
                        child: Text(
                          "Send Message",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.inter().fontFamily,
                          ),
                        ),
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
