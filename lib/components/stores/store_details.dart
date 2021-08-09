import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:vguide/components/contact/address_card.dart';
import 'package:vguide/components/contact/social_card.dart';
import 'package:vguide/components/stores/store_card_item.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';
import 'package:vguide/screens/stores/stores_screen.dart';

import '../text_styles.dart';

class StoreSectionWidget extends StatelessWidget {
  final bool isStoreSelected;
  final Store selectedStore;
  final Function onStoreSelected;

  const StoreSectionWidget(
      {this.isStoreSelected, this.selectedStore, this.onStoreSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.indigo.shade200,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: StoresData.stores.length,
                itemBuilder: (context, index) => StoreCardItem(
                      store: StoresData.stores[index],
                      onCardPressed: onStoreSelected,
                    )),
          ),
        ),
        AnimatedContainer(
            duration: Duration(milliseconds: 700),
            height: isStoreSelected ? 280 : 0,
            curve: Curves.fastOutSlowIn,
            child: Expanded(
                child: Container(
              child: _bottomSheetContent(selectedStore),
            )))
      ],
    );
  }
}

Widget _bottomSheetContent(Store store) {
  return Container(
      color: StoresScreen.pageColor,
      alignment: Alignment.center,
      padding: EdgeInsets.all(7.0),
      child: Card(
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    store.name,
                    style: VGuideTextStyles.header,
                  ),
                ),
                Text(
                  store.description,
                  style: VGuideTextStyles.body,
                ),
                Column(
                  children: _getStoreAddresses(store.contactList),
                ),
                Row(
                  children: _getSocialNetwordCards(store.socialMediaLinks),
                )
              ],
            ))),
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
