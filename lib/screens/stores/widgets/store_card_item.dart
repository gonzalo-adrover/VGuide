import 'package:flutter/material.dart';
import 'package:vguide/components/generic_card.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class StoreCardItem extends StatelessWidget {
  final Store store;
  final onCardPressed;

  StoreCardItem({this.store, this.onCardPressed});

  @override
  Widget build(BuildContext context) {
    return GenericCard(
      id: store.name,
      content: _storeTextWidget(store),
      cardWidth: 190.0,
      callback: this.onCardPressed,
    );
  }
}

Widget _storeTextWidget(Store store) => Container(
      child: Column(
        children: [
          Text(
            store.name,
            style: VGuideTextStyles.subheader,
          ),
          SizedBox(height: 10.0),
          Text(
            store.description,
            style: VGuideTextStyles.bodySmall,
          )
        ],
      ),
    );
