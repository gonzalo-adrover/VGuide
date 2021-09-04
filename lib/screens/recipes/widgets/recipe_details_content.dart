import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/recipe.dart';

class RecipeDetailsContent extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailsContent({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Ingredientes", style: VGuideTextStyles.header),
        SizedBox(height: 20),
        Container(
          height: 120.0,
          child: ListView(
              scrollDirection: Axis.horizontal,
              children: ingredientsList(recipe.foodList)),
        ),
        SizedBox(
          height: 20,
        ),
        Text("Procedimiento", style: VGuideTextStyles.header),
        SizedBox(height: 20),
        Column(
          children: stepList(recipe.steps),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Valores nutricionales",
          style: VGuideTextStyles.header,
        ),
        Text(
          "Porcion: ${recipe.serving}",
          style: VGuideTextStyles.chipLight,
        ),
        SizedBox(height: 20),
        Container(
          height: 180.0,
          child: GridView.count(
            crossAxisCount: 4,
            crossAxisSpacing: 3.0,
            mainAxisSpacing: 3.0,
            children: nutrientsList(recipe.nutrientsList),
          ),
        )
      ]),
    );
  }
}

List<Widget> ingredientsList(List<RecipeFood> ingredients) => ingredients
    .map((ing) => Container(
          child: Column(children: [
            Card(
              elevation: 2,
              child: Image.network(
                ing.picUrl,
                fit: BoxFit.cover,
                width: 70,
                height: 60,
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ing.name,
                    softWrap: true,
                    maxLines: 2,
                    style: VGuideTextStyles.ingredientTitle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    ing.serving,
                    softWrap: true,
                    maxLines: 2,
                    style: VGuideTextStyles.ingredientServing,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )
          ]),
        ))
    .toList();

Widget ingredientTile(RecipeFood ingredient) => SizedBox(
        child: Column(children: [
      Card(
        elevation: 0,
        child: Image.network(ingredient.picUrl),
      ),
      Text(ingredient.name),
      Text(ingredient.serving)
    ]));

List<Widget> stepList(List<String> steps) {
  Map<int, String> iSteps = steps.asMap();
  List<Widget> outSteps = [];
  iSteps.forEach((key, value) {
    outSteps.add(step(key + 1, value));
  });
  return outSteps;
}

Widget step(int number, String stepDetail) => Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
              color: Colors.amber.shade200,
              child: Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  number.toString(),
                  style: VGuideTextStyles.chipLight,
                ),
              )),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 3, left: 7, right: 7),
            child: Text(
              stepDetail,
              softWrap: true,
              maxLines: 3,
            ),
          )),
        ]));

List<Widget> nutrientsList(List<RecipeNutrient> nutrients) =>
    nutrients.map((e) => nutrient(e)).toList();

Widget nutrient(RecipeNutrient nutrient) => SizedBox(
      width: 70.0,
      child: Column(
        children: [
          Card(
            elevation: 0,
            color: Colors.lightBlue.shade200,
            child: Container(
              alignment: Alignment.center,
              width: 120,
              padding: EdgeInsets.all(10.0),
              child: Text(nutrient.amount),
            ),
          ),
          Text(
            nutrient.name,
            style: VGuideTextStyles.body,
          )
        ],
      ),
    );
