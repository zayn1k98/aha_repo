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

List productImages = [
  "https://www.ugaoo.com/cdn/shop/files/DSC_5427.jpg?v=1688453434&width=750",
  "https://www.ugaoo.com/cdn/shop/files/DSC_5393.jpg?v=1689323035",
  "https://www.ugaoo.com/cdn/shop/files/charcoal-barbeque-grill-32938217111684.jpg?v=1688718400&width=1500",
  "https://www.ugaoo.com/cdn/shop/files/DSC_5453.jpg?v=1688453433",
  "https://www.ugaoo.com/cdn/shop/files/DSC_5444.jpg?v=1688453434",
];

List products = [
  {
    "title": "Foldable Barbeque Stand",
    "description":
        "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
    "price": "₹5000",
    "images": productImages,
  },
  {
    "title": "Foldable Barbeque Stand",
    "description":
        "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
    "price": "₹5000",
    "images": productImages,
  },
  {
    "title": "Foldable Barbeque Stand",
    "description":
        "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
    "price": "₹5000",
    "images": productImages,
  },
  {
    "title": "Foldable Barbeque Stand",
    "description":
        "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
    "price": "₹5000",
    "images": productImages,
  },
  {
    "title": "Foldable Barbeque Stand",
    "description":
        "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
    "price": "₹5000",
    "images": productImages,
  },
];
