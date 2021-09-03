import 'package:flutter/material.dart';
import 'package:vguide/data/recipes_data.dart';
import 'package:vguide/screens/recipes/widgets/recipe_list_item.dart';

class RecipesScreen extends StatelessWidget {
  static const String id = 'recipes_screen';
  static Color pageColor = Colors.lightBlue.shade50;
  final recipes = RecipesData.getRecipes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recetas"),
        backgroundColor: Colors.lightBlue.shade200,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: pageColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(
                (context, index) => RecipeListItem(
                      recipe: recipes[index],
                    ),
                childCount: recipes.length),
            itemExtent: 290,
          )
        ],
      ),
    );
  }
}
