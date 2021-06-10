import 'package:vguide/domain/model/food.dart';

class Nutrient {
  final String name;
  final String shortDesc;
  final String longDesc;
  final List<Food> foodList;
  final String facilitators;
  final String inhibitors;

  const Nutrient(
      {this.name,
      this.shortDesc,
      this.longDesc,
      this.foodList,
      this.facilitators,
      this.inhibitors});
}

class NutrientListItem {
  final String name;
  final String shortDesc;
  final int id;

  const NutrientListItem({this.id, this.name, this.shortDesc});
}
