import 'package:flutter/material.dart';
import 'package:vguide/data/tips_data.dart';
import 'package:vguide/domain/model/tip.dart';
import 'widgets/tip_list_item.dart';

class TipsScreen extends StatelessWidget {
  static Color pageColor = Colors.red.shade50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tips"),
        backgroundColor: Colors.red.shade200,
        automaticallyImplyLeading: false,
      ),
      backgroundColor: pageColor,
      body: ListView(children: getTipList()),
    );
  }
}

List<TipListItem> getTipList() {
  List<Tip> tipData = TipsData.tipsList;
  List<TipListItem> tipListItem = tipData
      .map((tip) => TipListItem(
            tip: tip,
          ))
      .toList();

  return tipListItem;
}
