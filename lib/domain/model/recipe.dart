import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/domain/model/veggie_type.dart';

class Recipe {
  final String name;
  final List<VeggieType> veggieTypes;
  final List<Food> foodList;
  final Map<Nutrient, String> nutrientsList;
  final String description;
  final String picURL;

  const Recipe(
      {this.name,
      this.veggieTypes,
      this.foodList,
      this.nutrientsList,
      this.description,
      this.picURL});
}
