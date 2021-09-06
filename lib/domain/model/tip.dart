import 'package:vguide/domain/model/food.dart';
import 'package:vguide/domain/model/nutrient.dart';

class Tip {
  final String name;
  final String shortName;
  final String description;
  final String picURL;
  final String foodList;
  final String nutrientList;
  // final List<Food> foodList;
  // final List<Nutrient> nutrientList;

  const Tip(
      {this.name,
      this.shortName,
      this.description,
      this.nutrientList,
      this.foodList,
      this.picURL});
}
