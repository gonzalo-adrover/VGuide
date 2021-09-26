import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class AddressCard extends StatelessWidget {
  final Contact contactDetails;

  AddressCard({this.contactDetails});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        elevation: 1,
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Entypo.location_pin,
                    color: Colors.red.shade300,
                  ),
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      contactDetails.address,
                      style: VGuideTextStyles.mapDetailsHeaders,
                    ),
                    Text(
                      contactDetails.phoneNumber,
                      style: VGuideTextStyles.mapDetailsBody,
                    )
                  ],
                ))
              ],
            )));
  }
}
