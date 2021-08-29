import 'package:flutter/material.dart';
import 'package:vguide/components/list_item.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/screens/tips/tip_screen.dart';

class TipListItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback onPressed;

  TipListItem({
    this.title,
    this.imageUrl,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListItemWithImage(
      id: title,
      imageUrl: imageUrl,
      content: Text(title, style: VGuideTextStyles.header),
      onClick: () => routeToTipPage(context),
    );
  }

  Future routeToTipPage(context) {
    return Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => TipScreen(
                name: title,
                longDesc: title,
                pageColor: Colors.white,
              )),
    );
  }
}
