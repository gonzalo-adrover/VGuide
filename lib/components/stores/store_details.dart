import 'package:flutter/material.dart';
import 'package:vguide/components/contact/address_card.dart';
import 'package:vguide/components/contact/social_card.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/domain/model/store.dart';

class StoreDetails extends StatelessWidget {
  final Store store;

  StoreDetails({this.store});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: DraggableScrollableSheet(
            initialChildSize: 0.25,
            minChildSize: 0.25,
            maxChildSize: 0.5,
            builder: (_, controller) {
              return SingleChildScrollView(
                controller: controller,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                  color: Colors.white,
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
                      Column(
                        children:
                            _getSocialNetwordCards(store.socialMediaLinks),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
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
