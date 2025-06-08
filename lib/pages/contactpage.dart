import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      _showEmailFallbackDialog(
        context,
        name.text.trim(),
        mail.text.trim(),
        message.text.trim(),
      );
    }
  }

  void _showEmailFallbackDialog(
    BuildContext context,
    String name,
    String userEmail,
    String message,
  ) {
    const String recipientEmail =
        'rrkrish123@gmail.com'; // CHANGE THIS TO YOUR RECIPIENT EMAIL
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Cannot Open Email App'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const Text(
                  'Your email client could not be opened automatically.',
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please copy the email address and message below and send it manually:',
                ),
                const SizedBox(height: 10),
                SelectableText(
                  'To: $recipientEmail',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SelectableText(
                  'Subject: New Message from Web Contact Form - By $name',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                SelectableText('Message:\n$message'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Copy Email Address'),
              onPressed: () {
                Clipboard.setData(const ClipboardData(text: '$recipientEmail'));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Email address copied!')),
                );
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Copy Full Message'),
              onPressed: () {
                final String fullEmailContent =
                    "To: $recipientEmail\nSubject: New Message from Web Contact Form - By $name\n\n$message";
                Clipboard.setData(ClipboardData(text: fullEmailContent));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Full message copied!')),
                );
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
                        imgurl:
                            "https://ik.imagekit.io/rrkrish13112001/images/call.png?updatedAt=1749365993602",
                        textheading: "Drop us a Call",
                        textcontent: "+91-96777 04249 \n+91-90428 95697",
                        manualheight: 2.5,
                        manualwidth: 4,
                        imageres: 50,
                      ),
                      SizedBox(width: 30),
                      Aboutushmv(
                        imgurl:
                            "https://ik.imagekit.io/rrkrish13112001/images/email.png?updatedAt=1749366006684",
                        textheading: "Send us a Mail",
                        textcontent: "info@graphifyinfotech.com",
                        manualheight: 2.5,
                        manualwidth: 4,
                        imageres: 50,
                      ),
                      SizedBox(width: 30),
                      Aboutushmv(
                        imgurl:
                            "https://ik.imagekit.io/rrkrish13112001/images/destination.png?updatedAt=1749365999557",
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
                    Image.network(
                      "https://ik.imagekit.io/rrkrish13112001/images/callpic.png?updatedAt=1749366010387",
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
                              backgroundColor: Colors.lightBlueAccent
                                  .withOpacity(0.1),
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
                SizedBox(height: 30),
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
                Image.network(
                  "https://ik.imagekit.io/rrkrish13112001/images/contactimage.png?updatedAt=1749366000641",
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width / 1,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Aboutushmvmobileview(
                    imgurl:
                        "https://ik.imagekit.io/rrkrish13112001/images/call.png?updatedAt=1749365993602",
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
                    imgurl:
                        "https://ik.imagekit.io/rrkrish13112001/images/email.png?updatedAt=1749366006684",
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
                    imgurl:
                        "https://ik.imagekit.io/rrkrish13112001/images/destination.png?updatedAt=1749365999557",
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
                SizedBox(height: 30),
                Footermobile(),
              ],
            ),
          ),
          drawer: DrawerWidget(),
        );
  }
}
