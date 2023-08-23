import 'dart:developer';
import 'package:aha_camping_web/pages/home/home_page.dart';
import 'package:aha_camping_web/pages/home/landing_page.dart';
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
      // home: const UnderConstructionPage(),
      // home: const ProductDetailsPage(
      //   pageTitle: "Foldable Barbeque Stand",
      // ),
      home: const HomePage(),
    );
  }
}
