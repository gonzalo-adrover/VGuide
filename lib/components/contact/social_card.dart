import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class SocialCard extends StatelessWidget {
  final SocialLink socialDetails;

  SocialCard({this.socialDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          _getSocialNetworkIcon(socialDetails.network),
          color: Colors.black,
        ),
        Column(
          children: [
            Text(
              _getSocialNetworkName(socialDetails.network),
              style: VGuideTextStyles.subheader,
            ),
            Text(
              socialDetails.data,
              style: VGuideTextStyles.body,
            )
          ],
        )
      ],
    );
  }
}

IconData _getSocialNetworkIcon(NetworkType socialNetwork) {
  var icon;
  switch (socialNetwork) {
    case NetworkType.instagram:
      icon = Entypo.instagram;
      break;
    case NetworkType.facebook:
      icon = Entypo.facebook;
      break;
    case NetworkType.web:
      icon = Entypo.network;
      break;
    default:
  }
  return icon;
}

String _getSocialNetworkName(NetworkType socialNetwork) {
  var name;
  switch (socialNetwork) {
    case NetworkType.instagram:
      name = 'Instagram';
      break;
    case NetworkType.facebook:
      name = 'Facebook';
      break;
    case NetworkType.web:
      name = 'Página web';
      break;
    default:
  }
  return name;
}
