import 'package:flutter/material.dart';
import 'package:vguide/components/image_card_custom_text.dart';
import 'package:vguide/components/text_styles.dart';

class TipListItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  TipListItem({this.title, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ImageCardCustomText(
      imageUrl: imageUrl,
      textWidget: Text(
                title,
                style: VGuideTextStyles.header
              ),
      cardWidth: 800,
    );
  }
}
