import 'dart:developer';
import 'package:aha_camping_web/models/faq_model/faq_model.dart';
import 'package:aha_camping_web/pages/about_us/about_us_page.dart';
import 'package:aha_camping_web/pages/contact_us/contact_us_page.dart';
import 'package:aha_camping_web/pages/products/all_products.dart';
import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:aha_camping_web/services/faq_services.dart';
import 'package:aha_camping_web/services/features_services.dart';
import 'package:aha_camping_web/services/product_services.dart';
import 'package:aha_camping_web/services/testimonial_services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String route = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color cartButtonColor = Colors.grey[200]!;

  List<FAQModel> faq = [];

  bool isLoading = false;

  List allProducts = [];

  void getAllProducts() async {
    allProducts = await ProductServices().getAllProducts();

    // ignore: unused_local_variable
    for (var ele in allProducts) {
      buttonHoverValues.add(
        {
          "color": Colors.grey[200],
          "value": false,
        },
      );
    }
    setState(() {});
  }

  List allFaqs = [];
  List expandValues = [];

  void getAllFaqs() async {
    allFaqs = await FAQServices().getAllFaqs();

    // ignore: unused_local_variable
    for (var ele in allFaqs) {
      expandValues.add(false);
    }
    setState(() {});
  }

  List allTestimonials = [];

  void getTestimonials() async {
    allTestimonials = await TestimonialServices().getAllTestimonials();
  }

  List allFeatures = [];

  void getAllFeatures() async {
    allFeatures = await FeaturesServices().getAllFeatures();

    print("ALL FEATURES : $allFeatures");
  }

  double screenSize = 0;

  void getAllData() {
    getAllProducts();
    getAllFeatures();
    getAllFaqs();
    getTestimonials();
  }

  @override
  void initState() {
    super.initState();

    getAllData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;

    log("SCREEN WIDTH : $screenSize");

    return Scaffold(
      drawer: screenSize <= 500 ? drawer() : null,
      body: screenSize <= 500 ? mobileBody() : desktopBody(),
    );
  }

  Widget drawer() {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          // const SizedBox(height: 30),
          Center(
            child: Image.asset(
              "assets/logo/custom_logo.png",
              height: 80,
              width: 100,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title: const Text('Our Products'),
            onTap: () {
              Navigator.pushNamed(
                context,
                AllProductsPage.route,
                arguments: AllProductsArguments(
                  products: allProducts,
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.stream_sharp),
            title: const Text('Our Story'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const AboutUsPage();
              }));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_support_outlined),
            title: const Text('Contact Us'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ContactUsPage();
              }));
            },
          ),
        ],
      ),
    );
  }

  Widget mobileBody() {
    return ListView(
      children: [
        mobileHeader(),
        mobileBanner(),
        mobileFeatures(),
        mobileProducts(),
        mobileComingSoon(),
        mobileTestimonials(),
        mobileFaqs(),
        mobileCallToAction(),
        mobileFooter(),
      ],
    );
  }

  Widget mobileHeader() {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset(
        "assets/logo/custom_logo.png",
        height: 80,
        width: 100,
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
    );
  }

  Widget mobileBanner() {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/home.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: (MediaQuery.of(context).size.width / 2),
                  child: Text(
                    "At AHA BBQ, we’re your go-to  source for the ultimate BBQ experience. We specialize in manufacturing and selling high quality BBQ grills and stands that are perfect for indoor as well as outdoor adventures. But we are not just about grills, we are about creating unforgettable moments around the fire.",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      letterSpacing: 0.5,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            bottom: 30,
            top: 30,
          ),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AllProductsPage.route,
                arguments: AllProductsArguments(
                  products: allProducts,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[600],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "See what's new",
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

  Widget mobileFeatures() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: allFeatures.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 25,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              index == 1
                  ? Image.asset(
                      'assets/icons/portable.png',
                      height: 60,
                      width: 60,
                    )
                  : const SizedBox(),
              Text(
                allFeatures[index]['title'],
                style: GoogleFonts.oswald(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
              index != 1
                  ? Image.asset(
                      index == 0
                          ? 'assets/icons/reliable.png'
                          : 'assets/icons/customisable.png',
                      height: 60,
                      width: 60,
                    )
                  : const SizedBox()
            ],
          ),
        );
      },
    );
  }

  Widget mobileProducts() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Products",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AllProductsPage.route,
                    arguments: AllProductsArguments(
                      products: allProducts,
                    ),
                  );
                },
                child: Text(
                  "view all",
                  style: GoogleFonts.poppins(
                    color: Colors.green,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 250,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(
                                allProducts[index]['images'][index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      allProducts[index]["title"],
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      "₹ ${allProducts[index]["price"]}",
                                      style: GoogleFonts.inter(
                                        color: Colors.green[600],
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  allProducts[index]["description"],
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[600],
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    ProductDetailsPage.route,
                                    arguments: PageArguments(
                                      productId: allProducts[index]
                                          ['document_id'],
                                    ),
                                  );
                                },
                                onHover: (value) {
                                  setState(() {
                                    buttonHoverValues[index]['value'] = value;
                                    if (buttonHoverValues[index]['value'] ==
                                        true) {
                                      buttonHoverValues[index]['color'] =
                                          Colors.green[600]!;
                                    } else {
                                      buttonHoverValues[index]['color'] =
                                          Colors.grey[200]!;
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonHoverValues[index]
                                      ['color'],
                                  side: BorderSide(
                                    color: buttonHoverValues[index]['color'] ==
                                            Colors.grey[200]
                                        ? Colors.grey[700]!
                                        : Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Buy Now",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: buttonHoverValues[index]
                                                  ['color'] ==
                                              Colors.grey[200]
                                          ? Colors.grey[700]
                                          : Colors.white,
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
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileComingSoon() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  // color: Colors.cyan,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1520101244246-293f77ffc39e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.5),
                    ],
                    stops: const [
                      0.25,
                      0.5,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "COMING SOON",
                    style: GoogleFonts.montserrat(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.4,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  // color: Colors.cyan,
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://rainieroutdoor.com/media/catalog/product/cache/6a9b62d285cac88acccab73fdbb74afe/e/a/eagleyurt_1_1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.5),
                    ],
                    stops: const [
                      0.25,
                      0.5,
                    ],
                  ),
                ),
                child: Center(
                  child: Text(
                    "COMING SOON",
                    style: GoogleFonts.montserrat(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 0.4,
                      height: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget mobileTestimonials() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Testimonials",
            style: GoogleFonts.montserrat(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: CarouselSlider.builder(
            itemCount: allTestimonials.length,
            itemBuilder: (context, index, altIndex) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          allTestimonials[index]['review'],
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                            height: 2,
                          ),
                        ),
                        const Spacer(),
                        // CircleAvatar(
                        //   backgroundColor: Colors.grey[300],
                        //   radius: 24,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            allTestimonials[index]['from'],
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            allTestimonials[index]['designation'],
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[900],
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: allTestimonials.length == 1 ? false : true,
              enlargeCenterPage: false,
              pageSnapping: true,
              viewportFraction: 1,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
        ),
      ],
    );
  }

  Widget mobileFaqs() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Answers at a Glance",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Frequently Asked Questions",
            style: GoogleFonts.montserrat(
              fontSize: 18,
              color: Colors.grey[900],
              letterSpacing: 0.5,
            ),
          ),
        ),
        isLoading
            ? const CircularProgressIndicator()
            : allFaqs.isEmpty
                ? const Text("No faqs available")
                : Padding(
                    padding: const EdgeInsets.all(20),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: allFaqs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ExpansionPanelList(
                              elevation: 0,
                              children: [
                                ExpansionPanel(
                                  isExpanded: expandValues[index],
                                  canTapOnHeader: true,
                                  headerBuilder: (context, isExpanded) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          expandValues[index] =
                                              !expandValues[index];
                                        });
                                      },
                                      child: ListTile(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        title: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: Text(
                                            allFaqs[index]['question'],
                                            style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              letterSpacing: 0.5,
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  body: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    title: Text(
                                      allFaqs[index]['answer'],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
      ],
    );
  }

  Widget mobileCallToAction() {
    return Container(
      // color: Colors.grey[200],
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1609788063095-d71bf3c1f01f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Escape, Explore, Enjoy!",
              style: GoogleFonts.montserrat(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Camping Essentials Inside!",
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
    );
  }

  Widget mobileFooter() {
    return Container(
      height: 250,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "AHA Camping",
                    style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AboutUsPage();
                        }));
                      },
                      child: Text(
                        "About us",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     "Privacy Policy",
                    //     style: GoogleFonts.poppins(
                    //       color: Colors.green,
                    //       letterSpacing: 0.5,
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 14,
                    //     ),
                    //   ),
                    // ),
                    // TextButton(
                    //   onPressed: () {},
                    //   child: Text(
                    //     "Terms & Conditions",
                    //     style: GoogleFonts.poppins(
                    //       color: Colors.green,
                    //       letterSpacing: 0.5,
                    //       fontWeight: FontWeight.w600,
                    //       fontSize: 14,
                    //     ),
                    //   ),
                    // ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ContactUsPage();
                        }));
                      },
                      child: Text(
                        "Contact us",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.grey[850],
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Designed and developed by Syed Abdur Rahman",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[850],
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget desktopBody() {
    return ListView(
      children: [
        desktopHeader(),
        homeBanner(),
        features(),
        campTools(),
        comingSoon(),
        testimonials(),
        faqSection(),
        callToAction(),
        footer(),
      ],
    );
  }

  Widget desktopHeader() {
    return Container(
      height: 100,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Image.asset(
              "assets/logo/custom_logo.png",
              height: 80,
              width: 100,
            ),
            const Spacer(),
            // TextButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, AhaBbqPage.route);
            //   },
            //   child: Text(
            //     "AHA BBQ",
            //     style: GoogleFonts.poppins(
            //       color: Colors.green,
            //       letterSpacing: 0.5,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  AllProductsPage.route,
                  arguments: AllProductsArguments(
                    products: allProducts,
                  ),
                );
              },
              child: Text(
                "All Products",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AboutUsPage.route);
              },
              child: Text(
                "Our Story",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ContactUsPage.route);
              },
              child: Text(
                "Get in touch",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //     color: cartButtonColor,
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            //   child: Padding(
            //     padding: const EdgeInsets.all(4),
            //     child: TextButton.icon(
            //       onHover: (value) {
            //         setState(() {
            //           if (value == true) {
            //             cartButtonColor = Colors.green;
            //           } else {
            //             cartButtonColor = Colors.grey[200]!;
            //           }
            //         });
            //       },
            //       onPressed: () {},
            //       icon: Icon(
            //         Icons.local_mall_outlined,
            //         color: cartButtonColor == Colors.green
            //             ? Colors.white
            //             : Colors.green,
            //         size: 20,
            //       ),
            //       label: Text(
            //         "Cart",
            //         style: GoogleFonts.poppins(
            //           color: cartButtonColor == Colors.green
            //               ? Colors.white
            //               : Colors.green,
            //           letterSpacing: 0.5,
            //           fontWeight: FontWeight.bold,
            //           fontSize: 16,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget homeBanner() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home.jpg"),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width / 2.5),
              child: Text(
                "At AHA BBQ, we’re your go-to  source for the ultimate BBQ experience. We specialize in manufacturing and selling high quality BBQ grills and stands that are perfect for indoor as well as outdoor adventures. But we are not just about grills, we are about creating unforgettable moments around the fire.",
                style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                  height: 1.5,
                ),
              ),
            ),
            // SizedBox(
            //   width: (MediaQuery.of(context).size.width / 3) - 50,
            //   child: Text(
            //     "sub-text",
            //     style: GoogleFonts.montserrat(
            //       fontSize: 16,
            //       color: Colors.grey[900],
            //       fontWeight: FontWeight.w600,
            //       letterSpacing: 0.5,
            //       height: 1.5,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AllProductsPage.route,
                    arguments: AllProductsArguments(
                      products: allProducts,
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "See what's new",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
    );
  }

  Widget features() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.35,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: allFeatures.length,
          itemExtent: MediaQuery.of(context).size.width / 3,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                children: [
                  index == 1 ? const VerticalDivider() : const SizedBox(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                index == 0
                                    ? 'assets/icons/reliable.png'
                                    : index == 1
                                        ? 'assets/icons/portable.png'
                                        : 'assets/icons/customisable.png',
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(width: 20),
                              Text(
                                allFeatures[index]['title'],
                                style: GoogleFonts.montserrat(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Text(
                                allFeatures[index]['description'],
                                style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.grey[900],
                                  letterSpacing: 0.5,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  index == 1 ? const VerticalDivider() : const SizedBox(),
                ],
              ),
            );
          },
        ),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.all(40),
    //   child: Row(
    //     children: [
    //       Expanded(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Row(
    //               children: [
    //                 const Icon(
    //                   Icons.format_list_bulleted_rounded,
    //                 ),
    //                 const SizedBox(width: 16),
    //                 Text(
    //                   allFeatures[0]['title'],
    //                   style: GoogleFonts.montserrat(
    //                     fontSize: 18,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black,
    //                     letterSpacing: 0.5,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 16),
    //             Text(
    //               allFeatures[0]['description'],
    //               style: GoogleFonts.montserrat(
    //                 fontSize: 14,
    //                 color: Colors.grey[900],
    //                 letterSpacing: 0.5,
    //                 height: 1.5,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       const SizedBox(width: 30),
    //       Expanded(
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Row(
    //               children: [
    //                 const Icon(
    //                   Icons.format_list_bulleted_rounded,
    //                 ),
    //                 const SizedBox(width: 16),
    //                 Text(
    //                   allFeatures[1]['title'],
    //                   style: GoogleFonts.montserrat(
    //                     fontSize: 18,
    //                     fontWeight: FontWeight.bold,
    //                     color: Colors.black,
    //                     letterSpacing: 0.5,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             const SizedBox(height: 16),
    //             Text(
    //               allFeatures[1]['description'],
    //               style: GoogleFonts.montserrat(
    //                 fontSize: 14,
    //                 color: Colors.grey[900],
    //                 letterSpacing: 0.5,
    //                 height: 1.5,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       const SizedBox(width: 30),
    //       Row(
    //         children: [
    //           Column(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               Row(
    //                 children: [
    //                   const Icon(
    //                     Icons.format_list_bulleted_rounded,
    //                   ),
    //                   const SizedBox(width: 16),
    //                   Text(
    //                     allFeatures[2]['title'],
    //                     style: GoogleFonts.montserrat(
    //                       fontSize: 18,
    //                       fontWeight: FontWeight.bold,
    //                       color: Colors.black,
    //                       letterSpacing: 0.5,
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //               const SizedBox(height: 16),
    //               Expanded(
    //                 child: Column(
    //                   children: [
    //                     Text(
    //                       allFeatures[2]['description'],
    //                       style: GoogleFonts.montserrat(
    //                         fontSize: 14,
    //                         color: Colors.grey[900],
    //                         letterSpacing: 0.5,
    //                         height: 1.5,
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  List buttonHoverValues = [];
  Widget campTools() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Our Products",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    AllProductsPage.route,
                    arguments: AllProductsArguments(
                      products: allProducts,
                    ),
                  );
                },
                child: Text(
                  "view all",
                  style: GoogleFonts.poppins(
                    color: Colors.green,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: ListView.builder(
              // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: buttonHoverValues.length,
              //   mainAxisExtent: 500,
              //   mainAxisSpacing: 16,
              //   crossAxisSpacing: 16,
              // ),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: allProducts.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: NetworkImage(
                                allProducts[index]['images'][index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 6),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      allProducts[index]["title"],
                                      style: GoogleFonts.inter(
                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16),
                                    child: Text(
                                      "₹ ${allProducts[index]["price"]}",
                                      style: GoogleFonts.inter(
                                        color: Colors.green[600],
                                        letterSpacing: 0.5,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  allProducts[index]["description"],
                                  style: GoogleFonts.inter(
                                    color: Colors.grey[600],
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                  ),
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    ProductDetailsPage.route,
                                    arguments: PageArguments(
                                      productId: allProducts[index]
                                          ['document_id'],
                                    ),
                                  );
                                },
                                onHover: (value) {
                                  setState(() {
                                    buttonHoverValues[index]['value'] = value;
                                    if (buttonHoverValues[index]['value'] ==
                                        true) {
                                      buttonHoverValues[index]['color'] =
                                          Colors.green[600]!;
                                    } else {
                                      buttonHoverValues[index]['color'] =
                                          Colors.grey[200]!;
                                    }
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: buttonHoverValues[index]
                                      ['color'],
                                  side: BorderSide(
                                    color: buttonHoverValues[index]['color'] ==
                                            Colors.grey[200]
                                        ? Colors.grey[700]!
                                        : Colors.white,
                                    width: 1.5,
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    "Buy Now",
                                    style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: buttonHoverValues[index]
                                                  ['color'] ==
                                              Colors.grey[200]
                                          ? Colors.grey[700]
                                          : Colors.white,
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
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget comingSoon() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      // color: Colors.cyan,
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1520101244246-293f77ffc39e?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                        ],
                        stops: const [
                          0.25,
                          0.5,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "COMING SOON",
                        style: GoogleFonts.montserrat(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.4,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                      // color: Colors.cyan,
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        image: NetworkImage(
                            'https://rainieroutdoor.com/media/catalog/product/cache/6a9b62d285cac88acccab73fdbb74afe/e/a/eagleyurt_1_1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                        ],
                        stops: const [
                          0.25,
                          0.5,
                        ],
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "COMING SOON",
                        style: GoogleFonts.montserrat(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 0.4,
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget testimonials() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Text(
            "Testimonials",
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: CarouselSlider.builder(
            itemCount: allTestimonials.length,
            itemBuilder: (context, index, altIndex) {
              return Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          allTestimonials[index]['review'],
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                            height: 2,
                          ),
                        ),
                        const Spacer(),
                        // CircleAvatar(
                        //   backgroundColor: Colors.grey[300],
                        //   radius: 24,
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            allTestimonials[index]['from'],
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6),
                          child: Text(
                            allTestimonials[index]['designation'],
                            style: GoogleFonts.montserrat(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[900],
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              pageSnapping: true,
              viewportFraction: 1 / 2,
              height: 320,
            ),
          ),
        ),
      ],
    );
  }

  bool isQuestionExpanded = false;

  Widget faqSection() {
    return Column(
      children: [
        Text(
          "Answers at a Glance",
          style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Frequently Asked Questions",
            style: GoogleFonts.montserrat(
              fontSize: 20,
              color: Colors.grey[900],
              letterSpacing: 0.5,
            ),
          ),
        ),
        isLoading
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(40),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: allFaqs.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: ExpansionPanelList(
                          elevation: 0,
                          children: [
                            ExpansionPanel(
                              isExpanded: expandValues[index],
                              canTapOnHeader: true,
                              headerBuilder: (context, isExpanded) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      expandValues[index] =
                                          !expandValues[index];
                                    });
                                  },
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Text(
                                        allFaqs[index]['question'],
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              body: ListTile(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                title: Text(allFaqs[index]['answer']),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }

  Widget callToAction() {
    return Container(
      // color: Colors.grey[200],
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.unsplash.com/photo-1609788063095-d71bf3c1f01f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
          ),
          fit: BoxFit.cover,
        ),
      ),
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Escape, Explore, Enjoy!",
              style: GoogleFonts.montserrat(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 0.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Camping Essentials Inside!",
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
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
    );
  }

  Widget footer() {
    return Container(
      height: 220,
      color: Colors.grey[300],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const SizedBox(height: 30),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "AHA Camping",
                    style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "About us",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Privacy Policy",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Contact us",
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Colors.grey[850],
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Designed and developed by Syed Abdur Rahman",
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[850],
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
