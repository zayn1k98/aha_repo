import 'package:aha_camping_web/pages/products/products_page.dart';
import 'package:flutter/material.dart';

List<Widget> navigationRoutes(BuildContext context) {
  return [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const ProductsPage();
          }));
        },
        child: Text(
          "Our Products",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.pink[100],
              ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {},
        child: Text(
          "About Us",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.pink[100],
              ),
        ),
      ),
    ),
  ];
}
