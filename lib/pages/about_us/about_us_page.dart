import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  static const String route = '/our_story';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.75,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Our Story",
                          style: GoogleFonts.montserrat(
                            fontSize: 46,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            "This will be a short description about the motive and ambition of this company, how it came to be and what we want to achieve with respect to our customer base. Just our goals and appeal to the customers that will establish trust and expand our business further.",
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[900],
                              letterSpacing: 0.5,
                              height: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(40),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Card(
                elevation: 0,
                color: Colors.grey[200],
                surfaceTintColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "More about us",
                        style: GoogleFonts.montserrat(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "This will be a detailed description about the motive and ambition of this company, how it came to be and what we want to achieve with respect to our customer base. Just our goals and appeal to the customers that will establish trust and expand our business further. Explaining why they should choose us over all the other choices and the value we provide to them along with their satisfaction as a priority.",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[900],
                            letterSpacing: 0.5,
                            height: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisExtent: 250,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
              ),
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Icon(
                      Icons.ac_unit_rounded,
                      size: 40,
                      color: Colors.grey[900],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "Titles",
                        style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[900],
                          letterSpacing: 0.5,
                          height: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        "A short description regarding the title above explaining the features and values we provide to the customer.",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[900],
                          letterSpacing: 0.5,
                          height: 2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Our Customers",
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(30),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                mainAxisExtent: 80,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
              ),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.location_searching_outlined,
                      color: Colors.grey[900],
                      size: 40,
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Conclusion",
              style: GoogleFonts.montserrat(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "This will be a detailed description about the motive and ambition of this company, how it came to be and what we want to achieve with respect to our customer base. Just our goals and appeal to the customers that will establish trust and expand our business further. Explaining why they should choose us over all the other choices and the value we provide to them along with their satisfaction as a priority.",
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[900],
                            letterSpacing: 0.5,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            "Call to Action",
                            style: GoogleFonts.montserrat(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
