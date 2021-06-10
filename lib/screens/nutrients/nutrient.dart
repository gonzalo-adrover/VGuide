import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vguide/data/source/local/nutrients_data.dart';
import 'package:vguide/domain/model/nutrient.dart';

class Nutrient extends StatelessWidget {
  // static Color pageColor = Colors.purple.shade300;
  // static const String id = 'nutrient';
  final int id;
  final Color pageColor;

  const Nutrient({this.id,this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Text(
          this.id.toString(),
          style: GoogleFonts.balsamiqSans(
              color: Colors.black87,
              fontSize: 45.0,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
