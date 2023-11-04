import 'package:flutter/material.dart';
import 'package:tata_bouquet/presentation/screens/layout_page.dart';
import 'package:tata_bouquet/shared/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Tata Bouquet',
              style: GoogleFonts.sacramento(
                fontSize: 44,
                color: AppColors.primary,
              ),
            ),
            SizedBox(
                width: 350,
                height: 350,
                child: Image.asset(
                  'assets/flower.png',
                )),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const LayoutPage();
                    },
                  ),
                );
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              color: AppColors.primary,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Text(
                  'Mulai Belanja',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
