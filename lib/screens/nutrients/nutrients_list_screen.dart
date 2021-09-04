import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/data/nutrients_data.dart';
import 'package:vguide/screens/nutrients/nutrient_list_item.dart';

class NutrientsScreen extends StatelessWidget {
  static Color pageColor = Colors.indigo.shade100;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: ListView(children: getTipList()),
    );
  }
}

List<NutrientListItem> getTipList() {
  List<Nutrient> tipData = NutrientsData.getNutrients;
  List<NutrientListItem> tipListItem = tipData
      .map((nutrient) => NutrientListItem(
            nutrient: nutrient,
          ))
      .toList();

  return tipListItem;
}
