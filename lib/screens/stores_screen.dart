import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoresScreen extends StatelessWidget {
  static Color pageColor = Colors.purple.shade300;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Text(
          "Stores",
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
