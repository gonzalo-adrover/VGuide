import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class StoresMap extends StatefulWidget {
  final BuildContext context;
  final CameraPosition position;
  final Set<Marker> markers;

  const StoresMap(this.context, {this.position, this.markers});

  @override
  State<StatefulWidget> createState() => _StoresMapState();
}

class _StoresMapState extends State<StoresMap> {
  @override
  Widget build(BuildContext context) => GoogleMap(
        initialCameraPosition: widget.position,
        myLocationEnabled: true,
        markers: widget.markers,
      );
}
