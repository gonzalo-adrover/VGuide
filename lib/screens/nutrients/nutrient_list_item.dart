import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/components/widgets.dart';
import 'package:vguide/screens/nutrients/nutrient_screen.dart';

class NutrientListItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  NutrientListItem({
    this.title,
    this.imageUrl,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return HeroAnimatingCard(
      color: Colors.white,
      imageUrl: imageUrl,
      cardWidth: 700,
      textWidget: Text(title, style: VGuideTextStyles.header),
      heroAnimation: AlwaysStoppedAnimation(0),
      onPressed: () => Navigator.of(context).push<void>(
        MaterialPageRoute(
          builder: (context) => NutrientScreen(
            name: title,
            longDesc: title,
            pageColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
