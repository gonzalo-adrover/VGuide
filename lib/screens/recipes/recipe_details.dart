import 'package:flutter/material.dart';
import 'package:vguide/components/details_header.dart';
import 'package:vguide/components/details_layout.dart';
import 'package:vguide/domain/model/recipe.dart';
import 'package:vguide/screens/recipes/widgets/recipe_details_content.dart';
import 'package:vguide/screens/recipes/widgets/recipe_details_header.dart';

class RecipeDetails extends StatelessWidget {
  final Recipe recipe;
  static Color pageColor = Colors.lightBlue.shade200;

  RecipeDetails({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: pageColor,
          elevation: 0,
        ),
        backgroundColor: pageColor,
        body: Container(
          child: DetailsLayout(
            header: DetailsHeader(
              imageSource: recipe.picResource,
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
