import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  static Color pageColor = Colors.teal.shade300;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Text(
          "Settings",
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
