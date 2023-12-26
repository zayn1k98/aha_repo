import 'package:intl/intl.dart';
import 'package:aha_camping_web/responsive_layout/responsive_layout.dart';
import 'package:aha_camping_web/services/product_services.dart';
import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';

class PageArguments {
  final String productId;

  PageArguments({
    this.productId = 'NULL',
  });
}

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({
    super.key,
  });

  static String route = '/product';

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  // final product_id = ModalRoute.of(context).settings.arguments as PageArguments;

  String productID = '';
  Map<String, dynamic> productDetails = {};

  bool isLoading = true;

  void getProductDetails() async {
    if (productID != "NULL") {
      productDetails =
          await ProductServices().getProductDetails(documentID: productID);

      setState(() {
        double doublemrp = double.parse("${productDetails['mrp']}");
        mrp = numberFormat.format(doublemrp);
        double doubleprice = double.parse("${productDetails['price']}");
        price = numberFormat.format(doubleprice);
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  String mrp = '0.00';
  String price = '0.00';

  var numberFormat = NumberFormat('#,##,###.00', "en_US");

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final productId = ModalRoute.of(context)!.settings.arguments == null
        ? PageArguments(productId: "NULL")
        : ModalRoute.of(context)!.settings.arguments as PageArguments;
    productID = productId.productId;

    getProductDetails();

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Scaffold(
            body: LinearProgressIndicator(),
          )
        : ResponsiveLayout(
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
          productDetails['title'],
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.bold,
                color: WebTheme.lightText,
              ),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(),
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
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
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.local_shipping,
                                        color: Colors.grey[700],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Free Shipping. Estimated delivery in 2 to 4 days,",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey[700],
                                            ),
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
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    productDetails['title'],
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge,
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
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                  productDetails['description'],
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        fontSize: 18,
                                        color: Colors.grey[700],
                                        letterSpacing: 0.25,
                                        height: 1.6,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30),
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
                                                    "₹ $mrp",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge!
                                                        .copyWith(
                                                          fontSize: 20,
                                                          color: Colors.grey,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 8),
                                                    child: Text(
                                                      "₹ $price",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge!
                                                          .copyWith(
                                                            fontSize: 28,
                                                            color: Colors
                                                                .green[600],
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
                                                padding:
                                                    const EdgeInsets.all(4),
                                                child: Row(
                                                  children: [
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (quantity == 1) {
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                        color:
                                                            Colors.green[600],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        "$quantity",
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyLarge!
                                                            .copyWith(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Colors
                                                                  .grey[800],
                                                            ),
                                                      ),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          if (quantity == 5) {
                                                            ScaffoldMessenger
                                                                    .of(context)
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
                                                        color:
                                                            Colors.green[600],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 20),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  showDialog(
                                                    context: context,
                                                    builder: (context) {
                                                      return AlertDialog(
                                                        surfaceTintColor:
                                                            Colors.transparent,
                                                        backgroundColor:
                                                            Colors.grey[200],
                                                        title: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            vertical: 30,
                                                          ),
                                                          child: Text(
                                                            "Please contact the following number to place an order : +91-9876543210",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge!
                                                                .copyWith(
                                                                  fontSize: 20,
                                                                  color: Colors
                                                                          .grey[
                                                                      800],
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  letterSpacing:
                                                                      0.25,
                                                                ),
                                                          ),
                                                        ),
                                                        actions: [
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  Colors.green[
                                                                      600],
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(16),
                                                              child: Text(
                                                                "Close",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyLarge!
                                                                    .copyWith(
                                                                      fontSize:
                                                                          20,
                                                                      color: Colors
                                                                          .white,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      letterSpacing:
                                                                          0.25,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.green[600],
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(16),
                                                  child: Text(
                                                    "Order Now",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge!
                                                        .copyWith(
                                                          fontSize: 20,
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                itemCount:
                                                    productDetails['features']
                                                        .length,
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 4,
                                                      vertical: 8,
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons.done_rounded,
                                                          color:
                                                              Colors.green[600],
                                                          size: 28,
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .only(
                                                              left: 16,
                                                            ),
                                                            child: Text(
                                                              productDetails[
                                                                      'features']
                                                                  [index],
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .bodyLarge!
                                                                  .copyWith(
                                                                    fontSize:
                                                                        16,
                                                                    color: Colors
                                                                            .grey[
                                                                        700],
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(
        productDetails['images'][selectedIndex],
        height: MediaQuery.of(context).size.height * 0.55,
        width: double.infinity,
        fit: BoxFit.cover,
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
          itemCount: productDetails['images'].length,
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
                        productDetails['images'][index],
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
