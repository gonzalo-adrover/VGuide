import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vguide/components/stores/store_card_item.dart';
import 'package:vguide/components/stores/store_details.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';
import 'package:vguide/screens/stores/stores_map.dart';

class StoresScreen extends StatefulWidget {
  static Color pageColor = Colors.indigo.shade200;
  static final LatLng _kMapCenter = LatLng(-34.8851383, -56.1707025);
  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 12.0, tilt: 0, bearing: 0);

  @override
  State<StatefulWidget> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  Store selectedStore = StoresData.stores[0];
  bool isStoreSelected = false;
  Set<Marker> mapMarkers = _getAllMarkers();

  void clearSelection() {
    setState(() {
      isStoreSelected = false;
      mapMarkers = _getAllMarkers();
    });
  }

  void onStoreSelected(String storeName) {
    setState(() {
      if (isStoreSelected && selectedStore.name == storeName) {
        clearSelection();
      } else {
        selectedStore = StoresData.stores.firstWhere(
            (element) => element.name == storeName,
            orElse: () => StoresData.stores[0]);
        isStoreSelected = true;
        mapMarkers = _getMarkersByStore(selectedStore);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: StoresScreen.pageColor,
          title: Text("Tiendas"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: isStoreSelected ? 1 : 3,
                child: StoresMap(context,
                    position: StoresScreen._kInitialPosition,
                    markers: mapMarkers),
              ),
              // ConstrainedBox(
              //     constraints: BoxConstraints.loose(Size(140)),
              //     child: StoreSectionWidget(
              //       isStoreSelected: isStoreSelected,
              //       selectedStore: selectedStore,
              //       onStoreSelected: onStoreSelected,
              //     )),
              // Stack(
              //   children: [

              //   ],
              // ),
              Expanded(
                  child: StoreSectionWidget(
                isStoreSelected: isStoreSelected,
                selectedStore: selectedStore,
                onStoreSelected: onStoreSelected,
              )),
            ],
          ),
        ));
  }
}

// Returns a Set containing the Markers of all the available stores
Set<Marker> _getAllMarkers() {
  Set<Marker> markers = Set<Marker>();
  StoresData.stores.forEach((element) {
    element.contactList.forEach((element) {
      var current = Marker(
          markerId: element.marker.markerId,
          infoWindow: InfoWindow(title: element.marker.description),
          position: element.marker.position);
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
