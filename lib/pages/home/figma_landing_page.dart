import 'package:flutter/material.dart';

class LandingPageTemplate1440px extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 1440,
              height: 3568,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 17),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 62,
                            height: 16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 60.85,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/61x16"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 872),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'First',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Text(
                                  'Second',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Text(
                                  'Third',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Text(
                                  'Fourth',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Text(
                                  'Fifth',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Text(
                                  'Sixth',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 3,
                                        top: 3,
                                        child: Container(
                                          width: 18,
                                          height: 18,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://via.placeholder.com/18x18"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 60,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 165, vertical: 60),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 445,
                                        child: Text(
                                          'Medium length display headline',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 56,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w700,
                                            height: 1.07,
                                            letterSpacing: -1,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 24),
                                      SizedBox(
                                        width: 445,
                                        child: Text(
                                          'Separated they live in Bookmarks right at the coast of the famous Semantics, large language ',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 18,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.56,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 12),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF0065F1)),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Action',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'Helvetica Neue',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.50,
                                                      letterSpacing: 0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        width: 236,
                                        child: Text(
                                          '5,000 people like you have purchased this product!',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 14,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.43,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 110),
                          Container(
                            width: 555,
                            height: 380,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 555,
                                  height: 380,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 555,
                                        height: 380,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/555x380"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 555,
                                        height: 380,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Opacity(
                                              opacity: 0,
                                              child: Container(
                                                width: 555,
                                                height: 380,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF001C42)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 556,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 165, vertical: 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              child: Stack(
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            SizedBox(
                                              width: 294,
                                              child: Text(
                                                'Feature one',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 18,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.56,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      SizedBox(
                                        width: 350,
                                        child: Text(
                                          'All base UI elements are made using Nested Symbols and shared styles that are logically connected with one another.',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 16,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              child: Stack(
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            SizedBox(
                                              width: 294,
                                              child: Text(
                                                'Feature two',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 18,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.56,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      SizedBox(
                                        width: 350,
                                        child: Text(
                                          'All base UI elements are made using Nested Symbols and shared styles that are logically connected with one another.',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 16,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 40,
                                              height: 40,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 40,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: NetworkImage(
                                                              "https://via.placeholder.com/40x40"),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            SizedBox(
                                              width: 294,
                                              child: Text(
                                                'Feature three',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 18,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.56,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      SizedBox(
                                        width: 350,
                                        child: Text(
                                          'All base UI elements are made using Nested Symbols and shared styles that are logically connected with one another.',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 16,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 802,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 165, vertical: 60),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 445,
                                  child: Text(
                                    'Long headline on two lines to turn your visitors into users and achieve more',
                                    style: TextStyle(
                                      color: Color(0xFF0065F1),
                                      fontSize: 24,
                                      fontFamily: 'Helvetica Neue',
                                      fontWeight: FontWeight.w700,
                                      height: 1.33,
                                      letterSpacing: -0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                SizedBox(
                                  width: 445,
                                  child: Text(
                                    'Separated they live in Bookmarks right at the coast of the famous Semantics, large language ocean',
                                    style: TextStyle(
                                      color: Color(0xFF0065F1),
                                      fontSize: 16,
                                      fontFamily: 'Helvetica Neue',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 429,
                                              child: Text(
                                                'Showcase and embed your work with ',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 429,
                                              child: Text(
                                                'Publish across social channels in a click',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 429,
                                              child: Text(
                                                'Sell your videos worldwide',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 429,
                                              child: Text(
                                                'Embed your work with ',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 110),
                          Container(
                            width: 555,
                            height: 380,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 555,
                                  height: 380,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 555,
                                        height: 380,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/555x380"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 555,
                                        height: 380,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Opacity(
                                              opacity: 0,
                                              child: Container(
                                                width: 555,
                                                height: 380,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF001C42)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 1284,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 165, vertical: 60),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 555,
                            height: 380,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 555,
                                  height: 380,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 555,
                                        height: 380,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                "https://via.placeholder.com/555x380"),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 555,
                                        height: 380,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Opacity(
                                              opacity: 0,
                                              child: Container(
                                                width: 555,
                                                height: 380,
                                                decoration: BoxDecoration(
                                                    color: Color(0xFF001C42)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 110),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 445,
                                  child: Text(
                                    'Long headline on two lines to turn your visitors into users and achieve more',
                                    style: TextStyle(
                                      color: Color(0xFF0065F1),
                                      fontSize: 24,
                                      fontFamily: 'Helvetica Neue',
                                      fontWeight: FontWeight.w700,
                                      height: 1.33,
                                      letterSpacing: -0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                SizedBox(
                                  width: 445,
                                  child: Text(
                                    'Separated they live in Bookmarks right at the coast of the famous Semantics, large language ocean Separated they live in Bookmarks right at the coast',
                                    style: TextStyle(
                                      color: Color(0xFF0065F1),
                                      fontSize: 16,
                                      fontFamily: 'Helvetica Neue',
                                      fontWeight: FontWeight.w400,
                                      height: 1.50,
                                      letterSpacing: 0.10,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 24,
                                              child: Stack(
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 413,
                                              child: Text(
                                                'Showcase and embed your work with',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 24,
                                              child: Stack(
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 413,
                                              child: Text(
                                                'Publish across social channels in a click',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 20,
                                              height: 24,
                                              child: Stack(
                                                children: [],
                                              ),
                                            ),
                                            const SizedBox(width: 12),
                                            SizedBox(
                                              width: 413,
                                              child: Text(
                                                'Sell your videos worldwide',
                                                style: TextStyle(
                                                  color: Color(0xFF0065F1),
                                                  fontSize: 16,
                                                  fontFamily: 'Helvetica Neue',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.50,
                                                  letterSpacing: 0.10,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 1754,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 163, vertical: 58),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(2),
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 2,
                                        offset: Offset(0, 0),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 286,
                                        child: Text(
                                          '“All base UI elements are made using Nested Symbols and shared styles that are logically connected. Gorgeous, high-quality video sharing on desktop, mobile, tablet. All base UI elements are made using Nested Symbols”',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 18,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.56,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 58),
                                      Stack(
                                        children: [
                                          Positioned(
                                            left: 254,
                                            top: 104,
                                            child: Container(
                                              width: 48,
                                              height: 16,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 230,
                                              height: 120,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 60,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          height: 60,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Opacity(
                                                                        opacity:
                                                                            0,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              60,
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              BoxDecoration(color: Color(0xFF001C42)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16),
                                                  Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Name Surname',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.50,
                                                              letterSpacing:
                                                                  0.10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Description',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.43,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 2,
                                        offset: Offset(0, 0),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 286,
                                        child: Text(
                                          '“All base UI elements are made using Nested Symbols and shared styles that are logically connected. Gorgeous, high-quality video sharing on desktop, mobile, tablet. All base UI elements are made using Nested Symbols”',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 18,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.56,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 58),
                                      Stack(
                                        children: [
                                          Positioned(
                                            left: 254,
                                            top: 104,
                                            child: Container(
                                              width: 48,
                                              height: 16,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 230,
                                              height: 120,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 60,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          height: 60,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Opacity(
                                                                        opacity:
                                                                            0,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              60,
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              BoxDecoration(color: Color(0xFF001C42)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16),
                                                  Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Name Surname',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.50,
                                                              letterSpacing:
                                                                  0.10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Description',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.43,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Container(
                                  padding: const EdgeInsets.all(24),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 4,
                                        offset: Offset(0, 1),
                                        spreadRadius: 0,
                                      ),
                                      BoxShadow(
                                        color: Color(0x190065F2),
                                        blurRadius: 2,
                                        offset: Offset(0, 0),
                                        spreadRadius: 0,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: 286,
                                        child: Text(
                                          '“All base UI elements are made using Nested Symbols and shared styles that are logically connected. Gorgeous, high-quality video sharing on desktop, mobile, tablet. All base UI elements are made using Nested Symbols”',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 18,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.56,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 58),
                                      Stack(
                                        children: [
                                          Positioned(
                                            left: 254,
                                            top: 104,
                                            child: Container(
                                              width: 48,
                                              height: 16,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                  const SizedBox(width: 16),
                                                  Container(
                                                    width: 16,
                                                    height: 16,
                                                    child: Stack(
                                                      children: [],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 0,
                                            top: 0,
                                            child: Container(
                                              width: 230,
                                              height: 120,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 60,
                                                    height: 60,
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          height: 60,
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: 60,
                                                                height: 60,
                                                                child: Stack(
                                                                  children: [
                                                                    Positioned(
                                                                      left: 0,
                                                                      top: 0,
                                                                      child:
                                                                          Opacity(
                                                                        opacity:
                                                                            0,
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              60,
                                                                          height:
                                                                              60,
                                                                          decoration:
                                                                              BoxDecoration(color: Color(0xFF001C42)),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16),
                                                  Container(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Name Surname',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.50,
                                                              letterSpacing:
                                                                  0.10,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 230,
                                                          child: Text(
                                                            'Description',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFF0065F1),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'Helvetica Neue',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 1.43,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 2296,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 450, vertical: 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 540,
                                        child: Text(
                                          'Short headline',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 40,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w700,
                                            height: 1.20,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width: 540,
                                        child: Text(
                                          'Acme automates your subscription revenue and customer reporting. Just connect your data and Acme will calculate and visualize your most important metrics. ',
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 16,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w400,
                                            height: 1.50,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 540,
                                        height: 60,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 60,
                                              child: Container(
                                                width: 540,
                                                height: 1,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 540,
                                                      height: 1,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFF0065F1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 526,
                                              top: 21,
                                              child: Container(
                                                width: 14,
                                                height: 22,
                                                child: Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 16,
                                              child: SizedBox(
                                                width: 502,
                                                child: Text(
                                                  'System requirements',
                                                  style: TextStyle(
                                                    color: Color(0xFF0065F1),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.56,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 540, height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 540,
                                        height: 60,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 60,
                                              child: Container(
                                                width: 540,
                                                height: 1,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 540,
                                                      height: 1,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFF0065F1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 526,
                                              top: 21,
                                              child: Container(
                                                width: 14,
                                                height: 22,
                                                child: Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 16,
                                              child: SizedBox(
                                                width: 502,
                                                child: Text(
                                                  'Where can I learn more about how to get started?',
                                                  style: TextStyle(
                                                    color: Color(0xFF0065F1),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.56,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 540, height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 540,
                                        height: 60,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 60,
                                              child: Container(
                                                width: 540,
                                                height: 1,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 540,
                                                      height: 1,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFF0065F1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 526,
                                              top: 21,
                                              child: Container(
                                                width: 14,
                                                height: 22,
                                                child: Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 16,
                                              child: SizedBox(
                                                width: 502,
                                                child: Text(
                                                  'Is Acme available for Linux?',
                                                  style: TextStyle(
                                                    color: Color(0xFF0065F1),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.56,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 540, height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 540,
                                        height: 60,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 60,
                                              child: Container(
                                                width: 540,
                                                height: 1,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 540,
                                                      height: 1,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFF0065F1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 526,
                                              top: 21,
                                              child: Container(
                                                width: 14,
                                                height: 22,
                                                child: Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 16,
                                              child: SizedBox(
                                                width: 502,
                                                child: Text(
                                                  'What about a version for iOS?',
                                                  style: TextStyle(
                                                    color: Color(0xFF0065F1),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.56,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 540, height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 540,
                                        height: 60,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 60,
                                              child: Container(
                                                width: 540,
                                                height: 1,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 540,
                                                      height: 1,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0xFF0065F1)),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 526,
                                              top: 21,
                                              child: Container(
                                                width: 14,
                                                height: 22,
                                                child: Stack(
                                                  children: [],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 16,
                                              child: SizedBox(
                                                width: 502,
                                                child: Text(
                                                  'Will I automatically be charged when my trial ends?',
                                                  style: TextStyle(
                                                    color: Color(0xFF0065F1),
                                                    fontSize: 18,
                                                    fontFamily:
                                                        'Helvetica Neue',
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.56,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                  width: 540, height: 1),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 2920,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 450, vertical: 60),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 160,
                                        child: Text(
                                          'Tagline',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 16,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                            letterSpacing: 0.10,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      SizedBox(
                                        width: 540,
                                        child: Text(
                                          'Long headline to turn your visitors into users',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF0065F1),
                                            fontSize: 40,
                                            fontFamily: 'Helvetica Neue',
                                            fontWeight: FontWeight.w700,
                                            height: 1.20,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 32),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 6),
                                        decoration: BoxDecoration(
                                            color: Color(0xFF0065F1)),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Action',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16,
                                                      fontFamily:
                                                          'Helvetica Neue',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.50,
                                                      letterSpacing: 0.10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 3332,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 165, vertical: 40),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 61,
                            height: 15,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 59.87,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            "https://via.placeholder.com/60x15"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 122),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'First column',
                                        style: TextStyle(
                                          color: Color(0xFF0065F1),
                                          fontSize: 16,
                                          fontFamily: 'Helvetica Neue',
                                          fontWeight: FontWeight.w500,
                                          height: 1.50,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'First page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Second page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Third',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Fourth',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 114),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Second',
                                        style: TextStyle(
                                          color: Color(0xFF0065F1),
                                          fontSize: 16,
                                          fontFamily: 'Helvetica Neue',
                                          fontWeight: FontWeight.w500,
                                          height: 1.50,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fifth page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Sixth page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Eighth',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 114),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Third',
                                        style: TextStyle(
                                          color: Color(0xFF0065F1),
                                          fontSize: 16,
                                          fontFamily: 'Helvetica Neue',
                                          fontWeight: FontWeight.w500,
                                          height: 1.50,
                                          letterSpacing: 0.10,
                                        ),
                                      ),
                                      const SizedBox(height: 16),
                                      Container(
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Fifth page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Sixth page',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              'Eighth',
                                              style: TextStyle(
                                                color: Color(0xFF0065F1),
                                                fontSize: 14,
                                                fontFamily: 'Helvetica Neue',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 122),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Subscribe',
                                  style: TextStyle(
                                    color: Color(0xFF0065F1),
                                    fontSize: 16,
                                    fontFamily: 'Helvetica Neue',
                                    fontWeight: FontWeight.w500,
                                    height: 1.50,
                                    letterSpacing: 0.10,
                                  ),
                                ),
                                const SizedBox(height: 24),
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 350,
                                        height: 48,
                                        decoration: BoxDecoration(
                                            color: Color(0x66E0ECFD)),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 350,
                                              height: 48,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 350,
                                                      height: 48,
                                                      decoration: BoxDecoration(
                                                          color: Color(
                                                              0x66E0ECFD)),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 314,
                                                    top: 12,
                                                    child: Container(
                                                      width: 24,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 16,
                                                    top: 12,
                                                    child: Opacity(
                                                      opacity: 0.50,
                                                      child: Text(
                                                        'Placeholder',
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF0065F1),
                                                          fontSize: 16,
                                                          fontFamily:
                                                              'Helvetica Neue',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.50,
                                                          letterSpacing: 0.10,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      SizedBox(
                                        width: 350,
                                        child: Opacity(
                                          opacity: 0.40,
                                          child: Text(
                                            'Join our newsletter to stay up to date on features and releases',
                                            style: TextStyle(
                                              color: Color(0xFF0065F1),
                                              fontSize: 14,
                                              fontFamily: 'Helvetica Neue',
                                              fontWeight: FontWeight.w400,
                                              height: 1.43,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
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
          ],
        ),
      ),
    );
  }
}
