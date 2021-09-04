import 'package:flutter/material.dart';
import 'package:vguide/components/details_header.dart';
import 'package:vguide/components/details_layout.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/recipe.dart';
import 'package:vguide/screens/recipes/recipes_screen.dart';
import 'package:vguide/screens/recipes/widgets/recipe_details_content.dart';
import 'package:vguide/screens/recipes/widgets/recipe_details_header.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;

  RecipeDetails({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: RecipesScreen.pageColor.withAlpha(40),
          elevation: 0,
        ),
        backgroundColor: RecipesScreen.pageColor,
        body: Container(
          child: DetailsLayout(
            header: DetailsHeader(
              imageUrl: recipe.picURL,
              headerContent: RecipeDetailsHeader(
                recipe: recipe,
              ),
            ),
            body: SingleChildScrollView(
              child: RecipeDetailsContent(
                recipe: recipe,
              ),
            ),
          ),
        ));
  }
}
