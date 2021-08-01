import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class AddressCard extends StatelessWidget {
  final Contact contactDetails;

  AddressCard({this.contactDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Entypo.location_pin,
          color: Colors.black,
        ),
        Column(
          children: [
            Text(
              contactDetails.address,
              style: VGuideTextStyles.subheader,
            ),
            Text(
              contactDetails.phoneNumber,
              style: VGuideTextStyles.body,
            )
          ],
        )
      ],
    );
  }
}
