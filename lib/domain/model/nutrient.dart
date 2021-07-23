import 'package:vguide/domain/model/food.dart';

class Nutrient {
  final int id;
  final String name;
  final String shortDesc;
  final String longDesc;
  final List<String> foods;
  final String facilitators;
  final String inhibitors;
  final String picURL;

  const Nutrient(
      {this.id,
      this.name,
      this.shortDesc,
      this.longDesc,
      this.foods,
      this.facilitators,
      this.inhibitors,
      this.picURL});
}

class NutrientListItem {
  final String name;
  final String shortDesc;
  final String longDesc;

  const NutrientListItem({this.name, this.shortDesc, this.longDesc});
}

class NutrientDetails {
  final int id;
  final String name;
  final String longDesc;
  final List<String> foods;
  final String goodFoods;
  final String badFoods;

  const NutrientDetails(
      {this.id,
      this.name,
      this.longDesc,
      this.foods,
      this.goodFoods,
      this.badFoods});
}
