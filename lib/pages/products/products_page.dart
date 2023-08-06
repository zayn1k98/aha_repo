import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:aha_camping_web/responsive_layout/responsive_layout.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          "Our Products",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: WebTheme.lightText,
              ),
        ),
      ),
      body: ResponsiveLayout(
        desktopBody: desktopBody(screenWidth),
        mobileBody: mobileBody(screenWidth),
      ),
    );
  }

  Widget mobileBody(double width) {
    String productName = "Foldable Barbeque Stand";

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsPage(
                    pageTitle: productName,
                  );
                }));
              },
              borderRadius: BorderRadius.circular(14),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Foldable Barbeque Stand",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    // const SizedBox(height: 10),
                    // Text(
                    //   "Portable and high quality foldable barbeque stand made from 304 grade Stainless Steel and weighs in at around 4kgs only which makes it extremely sturdy and built to withstand even the cruelest grilling conditions. Designed with convinience in mind such as being easy to assemble, disassemble and simple to clean.",
                    //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    //         fontWeight: FontWeight.bold,
                    //         color: WebTheme.darkText,
                    //       ),
                    // ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹ 2,000/-",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: WebTheme.darkText,
                                  ),
                        ),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "COMING SOON",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: WebTheme.lightText,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget desktopBody(double width) {
    String productName = "Foldable Barbeque Stand";

    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: 1,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 326,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsPage(
                    pageTitle: productName,
                  );
                }));
              },
              borderRadius: BorderRadius.circular(14),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Foldable Barbeque Stand",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    // const SizedBox(height: 10),
                    // Text(
                    //   "Portable and high quality foldable barbeque stand made from 304 grade Stainless Steel and weighs in at around 4kgs only which makes it extremely sturdy and built to withstand even the cruelest grilling conditions. Designed with convinience in mind such as being easy to assemble, disassemble and simple to clean.",
                    //   style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    //         fontWeight: FontWeight.bold,
                    //         color: WebTheme.darkText,
                    //       ),
                    //   overflow: desktopWidth > width || width > mobileWidth
                    //       ? TextOverflow.ellipsis
                    //       : null,
                    // ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "₹ 2,000/-",
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w900,
                                    color: WebTheme.darkText,
                                  ),
                        ),
                        Container(
                          height: 36,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              "COMING SOON",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: WebTheme.lightText,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
