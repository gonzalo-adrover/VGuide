import 'package:flutter/material.dart';
import 'package:vguide/components/list_item.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/nutrient_details_screen.dart';

class NutrientListItem extends StatelessWidget {
  final Nutrient nutrient;

  NutrientListItem({this.nutrient});

  @override
  Widget build(BuildContext context) {
    return ListItemWithImage(
      id: nutrient.name,
      imageSource: nutrient.picURL,
      content: Text(nutrient.name, style: VGuideTextStyles.itemTitle),
      onClick: () => routeToNutrientPage(context),
    );
  }

  Future routeToNutrientPage(context) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => NutrientDetailsScreen(
                nutrient: nutrient,
              )));
}
