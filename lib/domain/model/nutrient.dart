class Nutrient {
  final int id;
  final String name;
  final String longDesc;
  final List<String> foods;
  final String facilitators;
  final String inhibitors;
  final String picURL;

  const Nutrient(
      {this.id,
      this.name,
      this.longDesc,
      this.foods,
      this.facilitators,
      this.inhibitors,
      this.picURL});
}