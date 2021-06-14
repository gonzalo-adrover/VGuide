import 'package:flutter/material.dart';
import 'package:vguide/components/image_card_custom_text.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class StoreCardItem extends StatelessWidget {
  final Store store;

  StoreCardItem({this.store});

  @override
  Widget build(BuildContext context) {
    return ImageCardCustomText(
      imageUrl: "https://images.happycow.net/venues/1024/52/06/hcmp52061_311834.jpeg",
      textWidget: _storeTextWidget(store),
      cardWidth: 350.0,
    );
  }
}

Widget _storeTextWidget(Store store) => Container(
      child: Column(
          children: [
            Text(store.name,
              style: VGuideTextStyles.header,
            ), 
            Text(store.description)],
        ),
    );
