import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/data/nutrients_data.dart';
import 'package:vguide/screens/nutrients/nutrient_list_item.dart';

class NutrientsScreen extends StatelessWidget {
  static Color pageColor = Colors.indigo.shade50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nutrientes"),
        backgroundColor: Colors.indigo.shade200,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: pageColor,
      body: ListView(children: getTipList()),
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
