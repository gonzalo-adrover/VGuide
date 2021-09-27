import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vguide/components/text_styles.dart';
import 'package:vguide/data/stores_data.dart';
import 'package:vguide/domain/model/store.dart';
import 'package:vguide/screens/stores/widgets/store_details.dart';

class StoresScreen extends StatefulWidget {
  static Color pageColor = Colors.green.shade50;

  @override
  State<StatefulWidget> createState() => _StoresScreenState();
}

class _StoresScreenState extends State<StoresScreen> {
  Store selectedStore;
  DepartmentType selectedDepartment;
  bool isStoreSelected;
  List<Marker> mapMarkers;
  List<Store> storesToDisplay;
  CameraPosition initialPosition;
  CameraUpdate updateCamera;
  GoogleMapController mapController;

  @override
  void initState() {
    isStoreSelected = false;
    selectedDepartment = DepartmentType.montevideo;
    mapMarkers = _getCurrentDepartmentMarkers(selectedDepartment);
    storesToDisplay = StoresData.montevideoStores;
    initialPosition = CameraPosition(
        target: _getLatLngByDepartment(selectedDepartment), zoom: 11.0);
    super.initState();
  }

  void updateMapDepartment() {
    setState(() {
      CameraPosition pos = CameraPosition(
          target: _getLatLngByDepartment(selectedDepartment),
          zoom: 10.0,
          bearing: 0.0,
          tilt: 0.0);
      mapController.animateCamera(CameraUpdate.newCameraPosition(pos));
    });
  }

  void updateMapStore() {
    setState(() {
      CameraPosition pos = CameraPosition(
          target: _getMapLatLngByStore(selectedStore),
          zoom: 14.0,
          bearing: 0.0,
          tilt: 75.0);
      mapController.animateCamera(CameraUpdate.newCameraPosition(pos));
    });
  }

  void clearSelection() {
    setState(() {
      isStoreSelected = false;
      mapMarkers = _getCurrentDepartmentMarkers(selectedDepartment);
      updateMapDepartment();
    });
  }

  void onDepartmentSelected(DepartmentType type) {
    setState(() {
      isStoreSelected = false;
      storesToDisplay = StoresData.stores.entries
          .firstWhere((element) => element.key == type)
          .value;
      selectedDepartment = type;
      updateMapDepartment();
      mapMarkers = _getCurrentDepartmentMarkers(type);
    });
  }

  void onStoreSelected(String storeName) {
    setState(() {
      if (isStoreSelected && selectedStore.name == storeName) {
        clearSelection();
      } else {
        mapMarkers = [];
        selectedStore = StoresData.stores.entries
            .firstWhere((element) => element.key == selectedDepartment)
            .value
            .firstWhere((element) => element.name == storeName);
        isStoreSelected = true;
        updateMapStore();
        mapMarkers = _getMarkersByStore(selectedStore, selectedDepartment);
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
        ),
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: isStoreSelected ? 1 : 7,
                child: GoogleMap(
                  onMapCreated: (GoogleMapController controller) {
                    mapController = controller;
                  },
                  initialCameraPosition: initialPosition,
                  myLocationEnabled: true,
                  markers: mapMarkers.toSet(),
                ),
              ),
              !isStoreSelected
                  ? Container(
                      child: Expanded(
                          child: ListView(
                      padding:
                          EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                      scrollDirection: Axis.horizontal,
                      children: StoresData.departments
                          .map((e) => InkWell(
                              onTap: () => onDepartmentSelected(e.key),
                              child: Transform(
                                  transform: new Matrix4.identity()..scale(0.7),
                                  child: Chip(
                                      label: Text(
                                        e.name,
                                        style: VGuideTextStyles.chip,
                                      ),
                                      elevation:
                                          selectedDepartment == e.key ? 1 : 0,
                                      backgroundColor:
                                          selectedDepartment == e.key
                                              ? Colors.teal.shade400
                                              : Colors.blueGrey.shade300))))
                          .toList(),
                    )))
                  : Container(),
              Container(
                  child: StoreSectionWidget(
                isStoreSelected: isStoreSelected,
                selectedStore: selectedStore,
                onStoreSelected: onStoreSelected,
                stores: storesToDisplay,
              )),
            ],
          ),
        ));
  }
}

// Returns a Set containing the Markers of all the available stores
List<Marker> _getCurrentDepartmentMarkers(DepartmentType type) {
  List<Marker> markers = [];
  StoresData.stores.entries
      .firstWhere((element) => element.key == type)
      .value
      .forEach((element) {
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

List<Marker> _getMarkersByStore(Store store, DepartmentType type) {
  List<Marker> markers = [];
  StoresData
      // Get the store from all the data
      .stores
      .entries
      .firstWhere((element) => element.key == type)
      .value
      .firstWhere((element) => element.name == store.name)
      .contactList
      .forEach((element) {
    markers.add(Marker(
        markerId: element.marker.markerId, position: element.marker.position));
  });
  return markers;
}

LatLng _getLatLngByDepartment(DepartmentType type) {
  LatLng target = StoresData.departments
      .firstWhere((element) => element.key == type)
      .position;
  return target;
}

CameraUpdate _getMapPositionByDepartment(DepartmentType type) {
  return CameraUpdate.newLatLng(_getLatLngByDepartment(type));
}

LatLng _getMapLatLngByStore(Store store) {
  LatLng target = store.contactList[0].marker.position;
  return target;
}
