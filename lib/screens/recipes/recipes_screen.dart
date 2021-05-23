import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecipesScreen extends StatelessWidget {
  static const String id = 'recipes_screen';
  static Color pageColor = Colors.lightBlue.shade300;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Text(
          "Recipes",
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
