import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

Widget chipsStore() => Container(
      color: Colors.grey.shade200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: DepartmentType.values
            .map((dep) => Container(
                color: Colors.lightBlueAccent.shade100,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    ChoiceChip(
                      elevation: 2.0,
                      label: Text(dep.toString(), style: VGuideTextStyles.chip),
                      selected: false,
                    ),
                    SizedBox(width: 8)
                  ],
                )))
            .toList(),
      ),
    );
