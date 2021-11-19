import 'package:flutter/material.dart';
import 'package:vguide/components/list_item.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/tip.dart';
import 'package:vguide/screens/tips/tip_details.dart';

class TipListItem extends StatelessWidget {
  final Tip tip;

  TipListItem({
    this.tip,
  });

  @override
  Widget build(BuildContext context) {
    return ListItemWithImage(
      id: tip.name,
      imageSource: tip.picURL,
      content: Text(tip.name, style: VGuideTextStyles.itemTitle),
      onClick: () => routeToTipPage(context),
    );
  }

  Future routeToTipPage(context) {
    return Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TipDetails(
                  tip: tip,
                )));
  }
}
