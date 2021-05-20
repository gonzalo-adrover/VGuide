import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* Returns a Nutrient 
 * to be shown on the List of Nutrients
 */
class NutrientListItemW extends StatelessWidget {
  final String title;
  final String shortDesc;

  NutrientListItemW(this.title, this.shortDesc);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        children: [
          ListHeaderText(title),
          ListContentText(shortDesc)],
      ),
    );
  }
}

class ListHeaderText extends StatelessWidget {
  String text;

  ListHeaderText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.shadowsIntoLight(
        fontSize: 20.0,
        fontWeight: FontWeight.w700
        ),
    );
  }
}

class ListContentText extends StatelessWidget {
  String text;

  ListContentText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.asap(
        fontSize: 14.0
      ),
    );
  }
}
