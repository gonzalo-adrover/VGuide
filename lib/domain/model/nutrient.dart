class Nutrient {
  final int id;
  final NutrientKey key;
  final String name;
  final String longDesc;
  final List<String> foods;
  final String facilitators;
  final String inhibitors;
  final String picURL;

  const Nutrient(
      {this.id,
      this.key,
      this.name,
      this.longDesc,
      this.foods,
      this.facilitators,
      this.inhibitors,
      this.picURL});
}

enum NutrientKey {
  carbohidratos,
  proteina,
  grasas,
  omega3,
  calcio,
  hierro,
  zinc,
  yodo,
  vitD,
  vitB12
}
