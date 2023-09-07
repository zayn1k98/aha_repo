import 'dart:developer';
import 'package:aha_camping_web/pages/about_us/about_us_page.dart';
import 'package:aha_camping_web/pages/aha_bbq/aha_bbq.dart';
import 'package:aha_camping_web/pages/home/home_page.dart';
import 'package:aha_camping_web/pages/home/landing_page.dart';
import 'package:aha_camping_web/pages/products/all_products.dart';
import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:aha_camping_web/pages/under_construction/under_construction_page.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) {
    log("!!! FIREBASE INITIALISED !!!");
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AHA Camping',
      theme: WebTheme.webTheme,
      // routes: {
      //   LandingPage.route: (context) => const LandingPage(),
      //   HomePage.route: (context) => const HomePage(),
      //   AboutUsPage.route: (context) => const AboutUsPage(),
      //   AllProductsPage.route: (context) => const AllProductsPage(),
      //   ProductDetailsPage.route: (context) => const ProductDetailsPage(),
      //   AhaBbqPage.route: (context) => const AhaBbqPage(),
      // },
      home: const UnderConstructionPage(),
    );
  }
}
