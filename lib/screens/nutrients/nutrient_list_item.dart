import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/components/widgets.dart';
import 'package:vguide/domain/model/nutrient.dart';
import 'package:vguide/screens/nutrients/nutrient_screen.dart';

class NutrientListItem extends StatelessWidget {
  final Nutrient nutrient;

  NutrientListItem({this.nutrient});

  @override
  Widget build(BuildContext context) {
    return HeroAnimatingCard(
      color: Colors.white,
      imageUrl: nutrient.picURL,
      cardWidth: 700,
      textWidget: Text(nutrient.name, style: VGuideTextStyles.header),
      heroAnimation: AlwaysStoppedAnimation(0),
      onPressed: () => Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => NutrientScreen(
            facilitators: nutrient.facilitators,
            foods: nutrient.foods,
            id: nutrient.id,
            imageUrl: nutrient.picURL,
            inhibitors: nutrient.inhibitors,
            longDesc: nutrient.longDesc,
            pageColor: Colors.white,
            title: nutrient.name,
          ),
        ),
      ),
    );
  }
}
