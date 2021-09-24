import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';
import 'package:vguide/screens/stores/stores_map.dart';
import 'package:vguide/screens/stores/widgets/store_details.dart';

class StoresScreen extends StatefulWidget {
  static Color pageColor = Colors.green.shade50;
  static final LatLng _kMapCenter = LatLng(-34.8851383, -56.1707025);
  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  State<StatefulWidget> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  Store selectedStore;
  bool isStoreSelected;
  List<Marker> mapMarkers;

  @override
  void initState() {
    isStoreSelected = false;
    mapMarkers = _getAllMarkers();
    super.initState();
  }

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
        mapMarkers = [];
        selectedStore = StoresData.stores
            .firstWhere((element) => element.name == storeName);
        isStoreSelected = true;
        mapMarkers = _getMarkersByStore(selectedStore);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: StoresScreen.pageColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.green.shade200,
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
              Container(
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
List<Marker> _getAllMarkers() {
  List<Marker> markers = [];
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

List<Marker> _getMarkersByStore(Store store) {
  List<Marker> markers = [];
  StoresData
      // Get the store from all the data
      .stores
      .firstWhere((element) => element.name == store.name,
          orElse: () => StoresData.stores[0])
      // Loop through contacts to get the markers
      .contactList
      .forEach((element) {
    markers.add(Marker(
        markerId: element.marker.markerId, position: element.marker.position));
  });
  return markers;
}
