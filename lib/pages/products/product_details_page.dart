import 'package:aha_camping_web/pages/home/landing_page.dart';
import 'package:aha_camping_web/responsive_layout/responsive_layout.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  final String pageTitle;
  const ProductDetailsPage({super.key, required this.pageTitle});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopBody: desktopBody(context),
      mobileBody: mobileBody(context),
    );
  }

  Widget mobileBody(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          widget.pageTitle,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: WebTheme.lightText,
              ),
        ),
      ),
      body: ListView(),
    );
  }

  List productImages = [
    "https://www.ugaoo.com/cdn/shop/files/DSC_5427.jpg?v=1688453434&width=750",
    "https://www.ugaoo.com/cdn/shop/files/DSC_5393.jpg?v=1689323035",
    "https://www.ugaoo.com/cdn/shop/files/charcoal-barbeque-grill-32938217111684.jpg?v=1688718400&width=1500",
    "https://www.ugaoo.com/cdn/shop/files/DSC_5453.jpg?v=1688453433",
    "https://www.ugaoo.com/cdn/shop/files/DSC_5444.jpg?v=1688453434",
  ];

  List productFeatures = [
    "Premium Quality: Crafted from 304 grade stainless steel, this stand is durable, long-lasting, and resistant to rust and corrosion.",
    "Portable Design: With a foldable design, it's easy to take this stand on the go, making it perfect for outdoor adventures, camping trips, or backyard BBQs.",
    "Heavy Gauge Construction: Weighing in at around 4kgs, this stand is sturdy and built to withstand even the toughest grilling conditions.",
    "Easy to Use: Designed with convenience in mind, this stand is simple to assemble, disassemble, and clean.",
    "Great Value: Priced competitively, this stand is an excellent investment for anyone looking to take their grilling game to the next level. Don't miss out on this must-have accessory!",
  ];

  int quantity = 1;

  Widget desktopBody(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        productImage(context),
                        imageChooser(context),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Divider(
                            color: Colors.grey[300],
                          ),
                        ),
                        Container(
                          height: 85,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 2.5,
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.local_shipping,
                                color: Colors.grey[700],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Free Shipping. Estimated delivery in 2-4 days,",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Foldable Barbeque Stand",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Text(
                                "4.0",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      fontSize: 18,
                                      color: Colors.grey[800],
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 0.5,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 4),
                                child: SizedBox(
                                  height: 24,
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          color: index == 4
                                              ? Colors.grey[400]
                                              : Colors.amber,
                                          size: 20,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Text(
                                  "(123 reviews)",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(
                                        fontSize: 15,
                                        color: Colors.grey[500],
                                        letterSpacing: 0.25,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            "Introducing the ultimate outdoor cooking companion - our foldable barbecue stand made from high-quality 304 grade stainless steel! With a weight of just 4kgs and heavy-gauge construction, it's the perfect choice for all your grilling needs. Don't settle for less - invest in quality today!",
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      fontSize: 18,
                                      color: Colors.grey[700],
                                      letterSpacing: 0.25,
                                      height: 1.6,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "₹ 8,000",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                    fontSize: 20,
                                                    color: Colors.grey,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 8),
                                              child: Text(
                                                "₹ 6,000",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyLarge!
                                                    .copyWith(
                                                      fontSize: 28,
                                                      color: Colors.green[600],
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(4),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (quantity == 1) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                            "Cannot remove minimum order quantity",
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      quantity--;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.remove,
                                                  color: Colors.green[600],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: Text(
                                                  "$quantity",
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge!
                                                      .copyWith(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.grey[800],
                                                      ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  setState(() {
                                                    if (quantity == 5) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                            "Maximum order limit is 5",
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      quantity++;
                                                    }
                                                  });
                                                },
                                                icon: Icon(
                                                  Icons.add_rounded,
                                                  color: Colors.green[600],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 20),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Navigator.push(context,
                                            //     MaterialPageRoute(
                                            //         builder: (context) {
                                            //   return const LandingPage();
                                            // }));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.green[600],
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: Text(
                                              "Order Now",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                    fontSize: 20,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    letterSpacing: 0.25,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Divider(
                                  color: Colors.white,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Features:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge!
                                            .copyWith(
                                              fontSize: 20,
                                              color: Colors.grey[800],
                                              fontWeight: FontWeight.bold,
                                              letterSpacing: 0.25,
                                            ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemCount: productFeatures.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 4,
                                                vertical: 8,
                                              ),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.done_rounded,
                                                    color: Colors.green[600],
                                                    size: 28,
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        left: 16,
                                                      ),
                                                      child: Text(
                                                        productFeatures[index],
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge!
                                                            .copyWith(
                                                              fontSize: 16,
                                                              color: Colors
                                                                  .grey[700],
                                                              letterSpacing:
                                                                  0.25,
                                                              height: 1.5,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget productImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: NetworkImage(
            productImages[selectedIndex],
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  int selectedIndex = 0;

  Widget imageChooser(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 60,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: productImages.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? Colors.transparent
                        : Colors.grey[200]!.withOpacity(0.5),
                    border: Border.all(
                      color: selectedIndex == index
                          ? Colors.blue
                          : Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage(
                        productImages[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
