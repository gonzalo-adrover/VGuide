class Nutrient {
  final String name;
  final String shortDesc;
  final String longDesc;
  final String foodList; //This will be changed soon
  final String facilitators;

  const Nutrient(
      {this.name,
      this.shortDesc,
      this.longDesc,
      this.foodList,
      this.facilitators});
}

class NutrientListItem {
  final String name;
  final String shortDesc;

  const NutrientListItem(
    {
      this.name,
      this.shortDesc
    }
  );
}
