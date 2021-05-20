import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutrientsScreen extends StatelessWidget {
  static Color pageColor = Colors.indigo.shade300;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Text(
          "Nutrients",
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
