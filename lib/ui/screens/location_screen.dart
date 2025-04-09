import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  static const LatLng myLocation = LatLng(23.9004, 90.3272);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // body: GoogleMap(
      //     initialCameraPosition: CameraPosition(target: myLocation, zoom: 15)),
    );
  }
}
