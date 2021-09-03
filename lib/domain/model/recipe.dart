import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class Recipe {
  final String name;
  final List<VeggieType> veggieTypes;
  final List<RecipeFood> foodList;
  final List<String> steps;
  final String serving;
  final List<RecipeNutrient> nutrientsList;
  final String description;
  final String picURL;

  const Recipe(
      {this.name,
      this.veggieTypes,
      this.foodList,
      this.steps,
      this.serving,
      this.nutrientsList,
      this.description,
      this.picURL});
}

class RecipeFood {
  final FoodKey key;
  final String name;
  final String serving;
  final String picUrl;

  RecipeFood({this.key, this.name, this.serving, this.picUrl});
}

class RecipeNutrient {
  final RecipeNutrientKey key;
  final String name;
  final String amount;

  RecipeNutrient({this.key, this.name, this.amount});
}

enum RecipeNutrientKey {
  carbohidratos,
  proteinas,
  lipidos,
  omega3,
  calcio,
  hierro,
  zinc
}
