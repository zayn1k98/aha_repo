import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  static const String route = '/contact_us';

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  double screenSize = 0;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;

    return Scaffold(
      body: screenSize <= 500 ? mobileBody() : desktopBody(),
    );
  }

  Widget mobileBody() {
    return ListView(
      children: [
        AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
            'Contact Us',
          ),
          centerTitle: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 16,
          ),
          child: Center(
            child: Text(
              "Have a question, a suggestion, or just want to share your latest outdoor adventure with us? We'd love to hear from you!",
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey[900],
                letterSpacing: 0.5,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Text(
              "We value your input and look forward to connecting with you. Your adventure starts here, and so does our journey together.",
              style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
                letterSpacing: 0.5,
                height: 2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 10),
        textField(
          controller: nameController,
          hint: "Name",
        ),
        textField(
          controller: emailController,
          hint: "Email",
        ),
        textField(
          controller: phoneController,
          hint: "Phone Number",
        ),
        textField(
          controller: messageController,
          hint: "Message",
          maxLines: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Submit your enquiry",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget desktopBody() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1523821741446-edb2b68bb7a0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Center(
                    child: Text(
                      "Have a question, a suggestion, or just want to share your latest outdoor adventure with us? We'd love to hear from you!",
                      style: GoogleFonts.montserrat(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Center(
                    child: Text(
                      "We value your input and look forward to connecting with you. Your adventure starts here, and so does our journey together.",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        height: 2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                textField(
                  controller: nameController,
                  hint: "Name",
                ),
                textField(
                  controller: emailController,
                  hint: "Email",
                ),
                textField(
                  controller: phoneController,
                  hint: "Phone Number",
                ),
                textField(
                  controller: messageController,
                  hint: "Message",
                  maxLines: 6,
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Submit your enquiry",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textField({
    required TextEditingController controller,
    required String hint,
    int? maxLines,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 8,
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[200],
          hintText: hint,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        onChanged: (value) {},
      ),
    );
  }
}
