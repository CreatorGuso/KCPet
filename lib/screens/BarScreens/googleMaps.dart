import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});

  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}

class _GoogleMapsState extends State<GoogleMaps> {
  final _initialCameraPosition = const CameraPosition(target: LatLng(0, 0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: GoogleMap(
        //tipo de mapa.
        mapType: MapType.normal,
        initialCameraPosition: _initialCameraPosition,
        // myLocationButtonEnabled: true,
        // compassEnabled: true,
        myLocationEnabled: true,
        compassEnabled: true,
        mapToolbarEnabled: true,
        tiltGesturesEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true,
      ),
    );
  }
}
