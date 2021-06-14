import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vguide/components/chips.dart';
import 'package:vguide/components/stores/store_card_item.dart';
import 'package:vguide/data/stores_data.dart';

class StoresScreen extends StatelessWidget {
  static Color pageColor = Colors.purple.shade300;

  static final LatLng _kMapCenter =
      LatLng(-34.8903897, -56.1798494);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 15.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pageColor,
      child: Column(
        children: [
          Flexible(
            flex: 10,
            child: Container(
              child: GoogleMap(
                initialCameraPosition: _kInitialPosition,
              ),
            color: Colors.amberAccent.shade400
          )),
          Flexible(
            flex: 1,
            child: chipsStore(),
          ),
          Flexible(
            flex: 4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: storesList,
            )
          )
        ],
      ),
    );
  }
}

List<Widget> storesList = StoresData.stores.map(
  (e) => StoreCardItem(store: e)
).toList();