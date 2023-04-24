import 'package:aha_camping_web/constants/constants.dart';
import 'package:aha_camping_web/custom_widgets/custom_drawer.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List carouselImages = [
    "assets/images/background_1.jpg",
    "assets/images/slider_image_1.jpg",
    "assets/images/slider_image_2.jpg",
    "assets/images/slider_image_3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: screenWidth > 600
            ? const Icon(
                Icons.logo_dev_rounded,
                color: Colors.white,
                size: 50,
              )
            : null,
        centerTitle: true,
        title: Text(
          "AHA Camping",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: WebTheme.lightText,
              ),
        ),
        actions: screenWidth > 600 ? navigationRoutes(context) : null,
      ),
      drawer: screenWidth < 600 ? const CustomDrawer() : null,
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height - kToolbarHeight,
              autoPlay: true,
              viewportFraction: 1,
            ),
            items: carouselImages.map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        image: DecorationImage(
                          image: AssetImage(i),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              },
            ).toList(),
          ),
        ],
      ),
    );
  }
}
