import 'package:aha_camping_web/constants/constants.dart';
import 'package:aha_camping_web/custom_widgets/custom_drawer.dart';
import 'package:aha_camping_web/pages/home/home_page.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List carouselImages = [
    "assets/images/background_1.jpg",
    "assets/images/slider_image_1.jpg",
    "assets/images/slider_image_2.jpg",
    "assets/images/slider_image_3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/home.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: AppBar(
        //   backgroundColor: Colors.blue[900],
        //   leading: screenWidth > 600
        //       ? const Icon(
        //           Icons.logo_dev_rounded,
        //           color: Colors.white,
        //           size: 50,
        //         )
        //       : null,
        //   centerTitle: true,
        //   title: Text(
        //     "AHA Camping",
        //     style: Theme.of(context).textTheme.titleLarge!.copyWith(
        //           fontWeight: FontWeight.bold,
        //           color: WebTheme.lightText,
        //         ),
        //   ),
        //   actions: screenWidth > 600 ? navigationRoutes(context) : null,
        // ),
        drawer: screenWidth < 600 ? const CustomDrawer() : null,
        // body: ListView(
        //   physics: const BouncingScrollPhysics(),
        //   children: [
        //     CarouselSlider(
        //       options: CarouselOptions(
        //         height: MediaQuery.of(context).size.height - kToolbarHeight,
        //         autoPlay: true,
        //         viewportFraction: 1,
        //       ),
        //       items: carouselImages.map(
        //         (i) {
        //           return Builder(
        //             builder: (BuildContext context) {
        //               return Container(
        //                 width: MediaQuery.of(context).size.width,
        //                 decoration: BoxDecoration(
        //                   color: Colors.grey[200],
        //                   image: DecorationImage(
        //                     image: AssetImage(i),
        //                     fit: BoxFit.cover,
        //                   ),
        //                 ),
        //               );
        //             },
        //           );
        //         },
        //       ).toList(),
        //     ),
        //   ],
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(50),
              child: Text(
                "Create your\nown camping\nstory.",
                style: GoogleFonts.poppins(
                  fontSize: 76,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      settings: const RouteSettings(
                        name: "/home",
                      ),
                      builder: (context) {
                        return const HomePage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Explore tools for the wilderness",
                    style: GoogleFonts.rubik(
                      color: Colors.white,
                      fontSize: 20,
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
}
