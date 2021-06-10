import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vguide/data/source/local/nutrients_data.dart';
import 'package:vguide/domain/model/nutrient.dart';

class NutrientScreen extends StatelessWidget {
  final String name;
  final String shortDesc;
  final String longDesc;
  final Color pageColor;

  const NutrientScreen({this.longDesc, this.name, this.shortDesc, this.pageColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              this.name,
              style: TextStyle(
                fontSize: 41,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              this.shortDesc,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Text(
              this.longDesc,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
