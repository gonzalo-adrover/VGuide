import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      // child: Row(children: [
      //   Text(
      //     "Tips",
      //     style: GoogleFonts.balsamiqSans(
      //       color: Colors.black87,
      //       fontSize: 45.0,
      //       fontWeight: FontWeight.w900),
      //   ),

      // ],),
    );
  }
}

List<TipListItem> getTipList() {
  List<Tip> tipData = TipsData.tipsList;
  List<TipListItem> tipListItem = tipData
      .map((tip) => TipListItem(
            title: tip.name,
          ))
      .toList();

  return tipListItem;
}
