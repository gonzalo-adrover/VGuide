import 'package:flutter/material.dart';
import 'package:vguide/components/list_item.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/nutritionist.dart';
import 'package:vguide/screens/nutrients/nutrient_details_screen.dart';

class NutritionistListItem extends StatelessWidget {
  final Nutritionist nutritionist;

  NutritionistListItem({this.nutritionist});

  @override
  Widget build(BuildContext context) {
    return ListItemWithImage(
      id: nutritionist.name,
      imageUrl: nutritionist.picURL,
      content: Text(nutritionist.name, style: VGuideTextStyles.itemTitle),
      onClick: () => routeToNutrientPage(context),
    );
  }

  Future routeToNutrientPage(context) => Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => NutritionistListItem(
                nutritionist: nutritionist,
              )));
}
