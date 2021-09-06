import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/tip.dart';

class TipDetailsContent extends StatelessWidget {
  final Tip tip;

  TipDetailsContent({this.tip});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Descripción", style: VGuideTextStyles.header),
      SizedBox(height: 20),
      Container(
        child: Text(tip.description, style: VGuideTextStyles.body),
      ),
      SizedBox(
        height: 20,
      ),
      Text("Alimentos relacionados", style: VGuideTextStyles.header),
      Text(
        tip.foodList,
        style: VGuideTextStyles.body,
      ),
      // Column(
      //   children: relatedFoodsList(tip.foodList),
      // ),
      SizedBox(
        height: 20,
      ),
      Text(
        "Nutrientes que se absorven mejor",
        style: VGuideTextStyles.header,
      ),
      Text(
        tip.nutrientList,
        style: VGuideTextStyles.body,
      ),
      // Container(
      //   height: 180.0,
      //   child: GridView.count(
      //     crossAxisCount: 4,
      //     crossAxisSpacing: 3.0,
      //     mainAxisSpacing: 3.0,
      //     children: nutrientsList(tip.nutrientList),
      //   ),
      // )
      SizedBox(
        height: 20,
      ),
    ]);
  }
}

List<Widget> relatedFoodsList(List<Food> foods) =>
    foods.map((e) => Text(e.name)).toList();

List<Widget> nutrientsList(List<Nutrient> nutrients) =>
    nutrients.map((e) => Text(e.name)).toList();
