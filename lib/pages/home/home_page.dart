import 'dart:developer';

import 'package:aha_camping_web/constants/constants.dart';
import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color buttonColor = Colors.grey[200]!;
  Color cartButtonColor = Colors.grey[200]!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          header(),
          homeBanner(),
          features(),
          campTools(),
          callToAction(),
          footer(),
        ],
      ),
    );
  }

  Widget header() {
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
            TextButton(
              onPressed: () {},
              child: Text(
                "Equipments",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "What's new",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "About us",
                style: GoogleFonts.poppins(
                  color: Colors.green,
                  letterSpacing: 0.5,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: cartButtonColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: TextButton.icon(
                  onHover: (value) {
                    setState(() {
                      if (value == true) {
                        cartButtonColor = Colors.green;
                      } else {
                        cartButtonColor = Colors.grey[200]!;
                      }
                    });
                  },
                  onPressed: () {},
                  icon: Icon(
                    Icons.local_mall_outlined,
                    color: cartButtonColor == Colors.green
                        ? Colors.white
                        : Colors.green,
                    size: 20,
                  ),
                  label: Text(
                    "Cart",
                    style: GoogleFonts.poppins(
                      color: cartButtonColor == Colors.green
                          ? Colors.white
                          : Colors.green,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
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

  Widget homeBanner() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/banner.jpg"),
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
              width: (MediaQuery.of(context).size.width / 3),
              child: Text(
                "One stop shop for all your camping needs!",
                style: GoogleFonts.montserrat(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            SizedBox(
              width: (MediaQuery.of(context).size.width / 3) - 50,
              child: Text(
                "Find all your camping related equipment all in one place without compromising on quality and getting a bang for your buck at the same time.",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ElevatedButton(
                onPressed: () {},
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
      padding: const EdgeInsets.all(40),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.format_list_bulleted_rounded,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Feature 1",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nullam non nisi est. Cursus sit amet dictum sit amet justo.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey[900],
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.format_list_bulleted_rounded,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Feature 1",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nullam non nisi est. Cursus sit amet dictum sit amet justo.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey[900],
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.format_list_bulleted_rounded,
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Feature 1",
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget nullam non nisi est. Cursus sit amet dictum sit amet justo.",
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    color: Colors.grey[900],
                    letterSpacing: 0.5,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget campTools() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "CampTools",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
              TextButton(
                onPressed: () {},
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
          padding: const EdgeInsets.all(40),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisExtent: 500,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: NetworkImage(
                          products[index]['images'][index],
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                products[index]["title"],
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
                                products[index]["price"],
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
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            products[index]["description"],
                            style: GoogleFonts.inter(
                              color: Colors.grey[600],
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const ProductDetailsPage(pageTitle: "");
                            }));
                          },
                          onHover: (value) {
                            log("Hover value : $value");
                            setState(() {
                              if (value == true) {
                                buttonColor = Colors.green[600]!;
                              } else {
                                buttonColor = Colors.grey[200]!;
                              }
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor,
                            side: BorderSide(
                              color: buttonColor == Colors.grey[200]
                                  ? Colors.grey[700]!
                                  : Colors.white,
                              width: 1.5,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text(
                              "Buy Now",
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: buttonColor == Colors.grey[200]
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
              );
            },
          ),
        ),
      ],
    );
  }

  Widget callToAction() {
    return SizedBox(
      height: 500,
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Another line guiding user to call to action",
              style: GoogleFonts.montserrat(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.black,
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
                    "Button Title",
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
        child: Expanded(
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
      ),
    );
  }
}
