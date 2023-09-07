import 'package:aha_camping_web/theme/web_theme.dart';
import 'package:flutter/material.dart';

class UnderConstructionPage extends StatelessWidget {
  const UnderConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background_1.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.black.withOpacity(0.6),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Image.asset(
                "assets/logo/logo.jpg",
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(height: 120),
            Center(
              child: Text(
                "We are currently working on this website and will launch soon!",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: WebTheme.lightText,
                      fontWeight: FontWeight.w900,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  "For enquiries, please contact:\n\n+91-7204556760\n or\n+91-7259837791",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: WebTheme.lightText,
                        fontWeight: FontWeight.w900,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
