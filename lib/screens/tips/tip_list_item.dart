import 'package:flutter/material.dart';
import 'package:vguide/components/generic_card.dart';
import 'package:vguide/components/text_styles.dart';

class TipListItem extends StatelessWidget {
  final String title;

  TipListItem({this.title});

  @override
  Widget build(BuildContext context) {
    return GenericCard(
      content: Text(title, style: VGuideTextStyles.header),
      cardWidth: 800,
    );
  }
}
