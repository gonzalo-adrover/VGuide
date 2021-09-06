import 'package:flutter/material.dart';
import 'package:vguide/components/list_item.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/recipe.dart';
import 'package:vguide/screens/recipes/recipe_details.dart';

class RecipeListItem extends StatelessWidget {
  final Recipe recipe;

  RecipeListItem({this.recipe}) : assert(recipe != null);

  @override
  Widget build(BuildContext context) {
    return ListItemWithImage(
      id: recipe.name,
      imageSource: recipe.picResource,
      content: listItemContent(context),
      onClick: () => routeToRecipePage(context),
    );
  }

  Future routeToRecipePage(context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => RecipeDetails(
                recipe: recipe,
              )),
    );
  }

  Widget listItemContent(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            recipe.name,
            style: VGuideTextStyles.itemTitle,
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
