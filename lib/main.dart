// import 'package:aha_camping_web/pages/under_construction/under_construction_page.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';

void main() {
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
      home: const HomePage(),
    );
  }
}
