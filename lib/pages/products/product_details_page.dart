import 'package:aha_camping_web/responsive_layout/responsive_layout.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String pageTitle;
  const ProductDetailsPage({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          pageTitle,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: WebTheme.lightText,
              ),
        ),
      ),
      body: ResponsiveLayout(
        desktopBody: desktopBody(),
        mobileBody: mobileBody(),
      ),
    );
  }

  Widget mobileBody() {
    return Column();
  }

  Widget desktopBody() {
    return Column();
  }
}
