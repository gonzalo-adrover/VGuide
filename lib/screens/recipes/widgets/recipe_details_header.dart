import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/recipe.dart';

class RecipeDetailsHeader extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailsHeader({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Receta",
          style: TextStyle(color: Colors.white),
        ),
        Text(
          recipe.name,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Row(
          children: recipe.veggieTypes
              .map(
                (e) => Transform(
                    transform: new Matrix4.identity()..scale(0.7),
                    child: Chip(
                        backgroundColor: e.color,
                        label: Text(
                          e.name,
                          style: VGuideTextStyles.chipLight,
                          maxLines: 2,
                          textWidthBasis: TextWidthBasis.parent,
                          overflow: TextOverflow.ellipsis,
                        ))),
              )
              .toList(),
        )
      ],
    );
  }
}
