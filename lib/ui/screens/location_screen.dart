import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FlutterMap(
        mapController: MapController(),
        options: MapOptions(
          initialCenter: LatLng(23.876589,90.320788),
          initialZoom: 15,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.yourapp',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(23.876589,90.320788),
                width: 40,
                height: 40,
                child: Icon(Icons.location_on, color: Colors.red, size: 40),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
