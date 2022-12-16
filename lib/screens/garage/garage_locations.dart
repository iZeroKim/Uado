import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class GarageLocations extends StatefulWidget {
  const GarageLocations({Key? key}) : super(key: key);

  @override
  State<GarageLocations> createState() => _GarageLocationsState();
}

class _GarageLocationsState extends State<GarageLocations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
    backgroundColor: const Color.fromRGBO(88,133,96, 1),
    elevation: 1.0,
    title: const Text("Garage Locations"),
    ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(-1.292066, 36.821945),
              zoom: 10.0
            ),
          ),

        ],
      ),
    );
  }
}

