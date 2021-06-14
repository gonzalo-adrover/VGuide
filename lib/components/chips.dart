import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

Widget chipsStore() => Container(
  color: Colors.lightBlueAccent.shade200,
  child: ListView(
    scrollDirection: Axis.horizontal,
    children: 
    Department.values.map((dep) => 
      Row(
        children: [
          SizedBox(width: 8),
          ChoiceChip(
            elevation: 6.0,label: 
            Text(dep.toString(), style: 
            VGuideTextStyles.chip),
            selected: false,
          ),
          SizedBox(width: 8)
        ],
      )
    ).toList(),
  ),
);
