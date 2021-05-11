import 'package:flutter/material.dart';
import 'package:vguide/screens/nutrients/nutrient_list_item.dart';
import '../../domain/model/nutrient.dart';

class Nutrients extends StatelessWidget {
  final List<Nutrient> nutrientsList;

  Nutrients(this.nutrientsList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getNutrientsList(nutrientsList),
    );
  }
}

List<Widget> _getNutrientsList(List<Nutrient> nutrientsList) {
  List<NutrientListItemW> output;

  for (var nutrient in nutrientsList) {
    output.add(NutrientListItemW(nutrient.name, nutrient.shortDesc));
  }

  return output;
}
