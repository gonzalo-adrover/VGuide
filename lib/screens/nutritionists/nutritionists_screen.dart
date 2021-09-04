import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NutritionistsScreen extends StatelessWidget {
  static Color pageColor = Colors.orange.shade50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nutricionistas"),
        backgroundColor: Colors.orange.shade200,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: pageColor,
      body: Center(
        child: Text(
          "Nutritionists",
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
