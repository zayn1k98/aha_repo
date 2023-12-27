import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AllProductsArguments {
  final List products;

  AllProductsArguments({
    required this.products,
  });
}

class AllProductsPage extends StatefulWidget {
  const AllProductsPage({super.key});

  static const String route = '/all_products';

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  List allProducts = [];
  List buttonHoverValues = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final products = ModalRoute.of(context)!.settings.arguments == null
        ? AllProductsArguments(
            products: [],
          )
        : ModalRoute.of(context)!.settings.arguments as AllProductsArguments;

    allProducts = products.products;

    // ignore: unused_local_variable
    for (var ele in allProducts) {
      buttonHoverValues.add(
        {
          "color": Colors.grey[200],
          "value": false,
        },
      );
    }

    super.didChangeDependencies();
  }

  double screenSize = 0;

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size.width;
    return screenSize <= 500 ? mobileBody() : desktopBody();
  }

  Widget mobileBody() {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text("Our Products"),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: allProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                        allProducts[index]['images'][index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              allProducts[index]["title"],
                              style: GoogleFonts.inter(
                                color: Colors.black,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              "₹ ${allProducts[index]["price"]}",
                              style: GoogleFonts.inter(
                                color: Colors.green[600],
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          allProducts[index]["description"],
                          style: GoogleFonts.inter(
                            color: Colors.grey[600],
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            ProductDetailsPage.route,
                            arguments: PageArguments(
                              productId: allProducts[index]['document_id'],
                            ),
                          );
                        },
                        onHover: (value) {
                          setState(() {
                            buttonHoverValues[index]['value'] = value;
                            if (buttonHoverValues[index]['value'] == true) {
                              buttonHoverValues[index]['color'] =
                                  Colors.green[600]!;
                            } else {
                              buttonHoverValues[index]['color'] =
                                  Colors.grey[200]!;
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonHoverValues[index]['color'],
                          side: BorderSide(
                            color: buttonHoverValues[index]['color'] ==
                                    Colors.grey[200]
                                ? Colors.grey[700]!
                                : Colors.white,
                            width: 1.5,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Buy Now",
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: buttonHoverValues[index]['color'] ==
                                      Colors.grey[200]
                                  ? Colors.grey[700]
                                  : Colors.white,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget desktopBody() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.grey[200],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/bbq.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
              ),
              child: Text(
                "All Products",
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.8,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                shrinkWrap: true,
                itemCount: allProducts.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(
                              allProducts[index]['images'][index],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 8,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                    allProducts[index]["title"],
                                    style: GoogleFonts.inter(
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16),
                                  child: Text(
                                    "₹ ${allProducts[index]["price"]}",
                                    style: GoogleFonts.inter(
                                      color: Colors.green[600],
                                      letterSpacing: 0.5,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                allProducts[index]["description"],
                                style: GoogleFonts.inter(
                                  color: Colors.grey[600],
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(
                                  context,
                                  ProductDetailsPage.route,
                                  arguments: PageArguments(
                                    productId: allProducts[index]
                                        ['document_id'],
                                  ),
                                );
                              },
                              onHover: (value) {
                                setState(() {
                                  buttonHoverValues[index]['value'] = value;
                                  if (buttonHoverValues[index]['value'] ==
                                      true) {
                                    buttonHoverValues[index]['color'] =
                                        Colors.green[600]!;
                                  } else {
                                    buttonHoverValues[index]['color'] =
                                        Colors.grey[200]!;
                                  }
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: buttonHoverValues[index]
                                    ['color'],
                                side: BorderSide(
                                  color: buttonHoverValues[index]['color'] ==
                                          Colors.grey[200]
                                      ? Colors.grey[700]!
                                      : Colors.white,
                                  width: 1.5,
                                ),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Text(
                                  "Buy Now",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: buttonHoverValues[index]['color'] ==
                                            Colors.grey[200]
                                        ? Colors.grey[700]
                                        : Colors.white,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
