import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';
import 'package:vguide/screens/stores/widgets/social_card.dart';
import 'package:vguide/screens/stores/widgets/store_card_item.dart';

import 'address_card.dart';

class StoreSectionWidget extends StatelessWidget {
  final bool isStoreSelected;
  final Store selectedStore;
  final Function onStoreSelected;
  final List<Store> stores;

  const StoreSectionWidget(
      {this.isStoreSelected,
      this.selectedStore,
      this.onStoreSelected,
      this.stores});

  @override
  Widget build(BuildContext context) {
    return isStoreSelected
        ? Expanded(
            child: _bottomSheetContent(selectedStore, onStoreSelected),
          )
        : Flexible(
            flex: 3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stores.length,
                itemBuilder: (context, index) => StoreCardItem(
                      store: stores[index],
                      onCardPressed: onStoreSelected,
                    )));
  }
}

Widget _bottomSheetContent(Store store, Function onCloseTap) {
  return Container(
      child: Stack(
    children: [
      Card(
        color: Colors.white,
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    store.name,
                    style: VGuideTextStyles.header,
                  ),
                  Text(
                    store.description,
                    style: VGuideTextStyles.body,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Flexible(
                    flex: 3,
                    child: Column(
                      children: _getStoreAddresses(store.contactList),
                    )),
                Flexible(
                    flex: 2,
                    child: Column(
                      children: _getSocialNetwordCards(store.socialMediaLinks),
                    ))
              ],
            ))
          ],
        )),
      ),
      IconButton(
          onPressed: () => {onCloseTap(store.name)},
          icon: Icon(Entypo.circle_with_cross, size: 25, color: Colors.black38))
    ],
  ));
}

List<AddressCard> _getStoreAddresses(List<Contact> contacts) {
  var addressCards = List<AddressCard>.empty(growable: true);
  contacts.forEach((element) {
    addressCards.add(AddressCard(
      contactDetails: element,
    ));
  });
  return addressCards;
}

List<SocialCard> _getSocialNetwordCards(List<SocialLink> socialLinks) {
  var socialCards = List<SocialCard>.empty(growable: true);
  socialLinks.forEach((element) {
    socialCards.add(SocialCard(
      socialDetails: element,
    ));
  });
  return socialCards;
}
