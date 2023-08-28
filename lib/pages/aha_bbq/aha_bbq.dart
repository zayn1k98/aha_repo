import 'package:aha_camping_web/constants/constants.dart';
import 'package:aha_camping_web/pages/products/product_details_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AhaBbqPage extends StatefulWidget {
  const AhaBbqPage({super.key});

  static const String route = '/aha_bbq';

  @override
  State<AhaBbqPage> createState() => _AhaBbqPageState();
}

class _AhaBbqPageState extends State<AhaBbqPage> {
  List buttonHoverValues = [
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
    {
      "color": Colors.grey[200],
      "value": false,
    },
  ];
  @override
  Widget build(BuildContext context) {
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
                "Barbeque Station",
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
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  mainAxisExtent: 500,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                shrinkWrap: true,
                itemCount: buttonHoverValues.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: NetworkImage(
                              products[index]['images'][index],
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
                                    products[index]["title"],
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
                                    products[index]["price"],
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
                                products[index]["description"],
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
