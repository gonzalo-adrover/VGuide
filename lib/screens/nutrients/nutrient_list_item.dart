import 'package:flutter/material.dart';

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
          Text(title),
          Text(shortDesc)
          ],
      ),
    );
  }
}
