import 'package:flutter/material.dart';
import 'package:vguide/domain/model/nutrient.dart';

class NutrientDescription extends StatelessWidget {
  const NutrientDescription({
    this.nutrient,
  });

  final Nutrient nutrient;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        getInfo(nutrient.longDesc, 0, context),
        SizedBox(height: 30.0),
        getInfo(nutrient.foods.toString(), 1, context),
        SizedBox(height: 30.0),
        getInfo(nutrient.facilitators, 2, context),
        SizedBox(height: 30.0),
        getInfo(nutrient.inhibitors, 3, context),
      ],
    );
  }
}

Widget getInfo(String nutrientFieldData, int field, BuildContext context) {
  String title;
  if (nutrientFieldData != "") {
    switch (field) {
      case 0:
        title = "Información general\n";
        break;
      case 1:
        title = "¿En qué alimentos se encuentra en mayor cantidad?\n";
        break;
      case 2:
        title = "¿Cómo aprovecharlo mejor?\n";
        break;
      case 3:
        title = "¿Que debemos evitar para no desaprovecharlo?\n";
        break;
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(nutrientFieldData)
      ],
    );
  }
  return Text("");
}
