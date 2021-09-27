import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/tip.dart';
import 'package:vguide/components/constants.dart' as Constants;

class TipDetailsContent extends StatelessWidget {
  final Tip tip;

  TipDetailsContent({this.tip});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        getData("Descripción", tip.description),
        SizedBox(height: Constants.sizedBoxHeight),
        getData("Alimentos relacionados", tip.foodList),
        SizedBox(height: Constants.sizedBoxHeight),
        getData("Nutrientes que se absorben mejor", tip.nutrientList),
      ],
    );
  }
}

Widget getData(String title, String descripcion) => Container(
      child: descripcion != ""
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: VGuideTextStyles.header,
                ),
                SizedBox(height: 10),
                Text(
                  descripcion,
                  style: VGuideTextStyles.body,
                ),
              ],
            )
          : null,
    );

List<Widget> relatedFoodsList(List<Food> foods) =>
    foods.map((e) => Text(e.name)).toList();

List<Widget> nutrientsList(List<Nutrient> nutrients) =>
    nutrients.map((e) => Text(e.name)).toList();
