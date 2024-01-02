import 'package:aha_camping_web/services/features_services.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  static const String route = '/our_story';

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  double screenSize = 0;

  List allFeatures = [];

  void getAllFeatures() async {
    allFeatures = await FeaturesServices().getAllFeatures();

    print("ALL FEATURES : $allFeatures");
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    init();
  }

  void init() async {
    getAllFeatures();
  }

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
            'Our Story',
          ),
          centerTitle: true,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1599950755910-74da5be2f8dc?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                fit: BoxFit.cover,
                opacity: 0.8,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Our Story",
                    style: GoogleFonts.montserrat(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      "Welcome to AHA Camping, your go-to destination for meticulously crafted BBQ and camping equipment that enhance your outdoor adventures",
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 0.5,
                        height: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
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
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Text(
                      "We understand the essence of outdoor escapades. Whether you're a seasoned adventurer or a novice camper, our curated selection of camping equipment is designed to elevate your experience. What sets us apart is our dedication to quality and durability. We ensure that we use the best possible materials available at our disposal to give you the finest quality finished product. Apart from the products that are already listed on our webpage, you can also get in touch with us to build for you the amazing ideas you come up with.Thank you for choosing AHA Camping as your trusted partner in camping adventures. Join us in discovering the beauty of the great outdoors, one quality piece of gear at a time.",
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
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: allFeatures.isEmpty
              ? const Text("Empty")
              : ListView.builder(
                  // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //   crossAxisCount: 1,
                  //   mainAxisExtent: 250,
                  //   mainAxisSpacing: 30,
                  //   crossAxisSpacing: 30,
                  // ),
                  shrinkWrap: true,
                  itemCount: allFeatures.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == allFeatures.indexOf(allFeatures.last)
                            ? 0
                            : 30,
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            index == 0
                                ? 'assets/icons/reliable.png'
                                : index == 1
                                    ? 'assets/icons/portable.png'
                                    : 'assets/icons/customisable.png',
                            height: 60,
                            width: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Text(
                              allFeatures[index]['title'],
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
                              allFeatures[index]['description'],
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
                      ),
                    );
                  },
                ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 30),
        //   child: Text(
        //     "Our Customers",
        //     style: GoogleFonts.montserrat(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black,
        //       letterSpacing: 0.5,
        //     ),
        //   ),
        // ),
        // const SizedBox(height: 30),
        // Padding(
        //   padding: const EdgeInsets.all(30),
        //   child: GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 5,
        //       mainAxisExtent: 80,
        //       mainAxisSpacing: 30,
        //       crossAxisSpacing: 30,
        //     ),
        //     shrinkWrap: true,
        //     itemCount: 10,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         decoration: BoxDecoration(
        //           color: Colors.grey[200],
        //           borderRadius: BorderRadius.circular(16),
        //         ),
        //         child: Center(
        //           child: Icon(
        //             Icons.location_searching_outlined,
        //             color: Colors.grey[900],
        //             size: 40,
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 30),
        //   child: Text(
        //     "Get in touch with us",
        //     style: GoogleFonts.montserrat(
        //       fontSize: 40,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black,
        //       letterSpacing: 0.5,
        //     ),
        //   ),
        // ),
        Container(
          color: Colors.grey[200],
          child: Column(
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Customer satisfaction is at the core of our values. Our knowledgeable and friendly customer support team is here to assist you every step of the way. We strive to make your shopping experience seamless, and our commitment doesn't end with a purchase – we're here to support you through all your outdoor endeavors.",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[900],
                      letterSpacing: 0.5,
                      height: 2,
                    ),
                  ),
                ),
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
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Get in touch with us",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ],
    );
  }

  Widget desktopBody() {
    return ListView(
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
                          "Welcome to AHA Camping, your go-to destination for meticulously crafted BBQ and camping equipment that enhance your outdoor adventures",
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
                      // color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1445888985293-8e1b904061c4?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30),
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
                      "We understand the essence of outdoor escapades. Whether you're a seasoned adventurer or a novice camper, our curated selection of camping equipment is designed to elevate your experience. What sets us apart is our dedication to quality and durability. We ensure that we use the best possible materials available at our disposal to give you the finest quality finished product. Apart from the products that are already listed on our webpage, you can also get in touch with us to build for you the amazing ideas you come up with.Thank you for choosing AHA Camping as your trusted partner in camping adventures. Join us in discovering the beauty of the great outdoors, one quality piece of gear at a time.",
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
                        "Customer satisfaction is at the core of our values. Our knowledgeable and friendly customer support team is here to assist you every step of the way. We strive to make your shopping experience seamless, and our commitment doesn't end with a purchase – we're here to support you through all your outdoor endeavors.",
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
                          "Get in touch with us",
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
    );
  }
}
