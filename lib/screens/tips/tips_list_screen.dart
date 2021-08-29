import 'package:flutter/material.dart';
import 'package:vguide/data/tips_data.dart';
import 'package:vguide/domain/model/tip.dart';
import 'tip_list_item.dart';

class TipsScreen extends StatelessWidget {
  static Color pageColor = Colors.yellow.shade300;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: ListView(children: getTipList()),
    );
  }
}

List<TipListItem> getTipList() {
  List<Tip> tipData = TipsData.tipsList;
  List<TipListItem> tipListItem = tipData
      .map((tip) => TipListItem(
            title: tip.name,
            imageUrl: tip.picURL,
            description: tip.description,
          ))
      .toList();

  return tipListItem;
}
