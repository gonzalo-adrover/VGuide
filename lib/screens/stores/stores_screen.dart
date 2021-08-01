import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vguide/components/stores/store_card_item.dart';
import 'package:vguide/components/stores/store_details.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';

class StoresScreen extends StatefulWidget {
  static Color pageColor = Colors.grey.shade300;

  static final LatLng _kMapCenter = LatLng(-34.8851383, -56.1707025);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 12.0, tilt: 0, bearing: 0);

  @override
  State<StatefulWidget> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  Store selectedStore = StoresData.stores[0];
  Set<Marker> mapMarkers = _getAllMarkers();

  void onStoreSelected(storeName) {
    setState(() {
      selectedStore = StoresData.stores.firstWhere(
          (element) => element.name == storeName,
          orElse: () => StoresData.stores[0]);
      mapMarkers = _getMarkersByStore(selectedStore);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          _googleMap(context, StoresScreen._kInitialPosition, mapMarkers),
          _bottomSheetContent(selectedStore),
          _bottomCarousel(
              context: context,
              onStorePressed: (selectedStore) =>
                  {onStoreSelected(selectedStore)}),
        ],
      ),
    ));
  }
}

Widget _googleMap(
        BuildContext context, CameraPosition position, Set<Marker> markers) =>
    Positioned.fill(
        bottom: MediaQuery.of(context).size.height * 0.2,
        child: Container(
            child: GoogleMap(
              initialCameraPosition: position,
              myLocationEnabled: true,
              markers: markers,
            ),
            color: Colors.amberAccent.shade400));

Widget _bottomSheetContent(Store store) => StoreDetails(
      store: store,
    );

Widget _bottomCarousel({BuildContext context, @required onStorePressed}) =>
    Positioned.fill(
      top: MediaQuery.of(context).size.height * 0.71,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: storesList(onStorePressed),
      ),
    );

List<Widget> storesList(onCardPressed) => StoresData.stores
    .map((e) => StoreCardItem(
          store: e,
          onCardPressed: onCardPressed,
        ))
    .toList();

// Returns a Set containing the Markers of all the available stores
Set<Marker> _getAllMarkers() {
  Set<Marker> markers = Set<Marker>();
  StoresData.stores.forEach((element) {
    element.contactList.forEach((element) {
      var current = Marker(
          markerId: element.marker.markerId, position: element.marker.position);
      markers.add(current);
    });
  });
  return markers;
}

Set<Marker> _getMarkersByStore(Store store) {
  Set<Marker> markers = Set<Marker>();
  StoresData
      // Get the store from all the data
      .stores
      .firstWhere((element) => element.name == store.name)
      // Loop through contacts to get the markers
      .contactList
      .forEach((element) {
    markers.add(Marker(
        markerId: element.marker.markerId, position: element.marker.position));
  });
  return markers;
}
