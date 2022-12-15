import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class GarageLocations extends StatefulWidget {
  const GarageLocations({Key? key}) : super(key: key);

  @override
  State<GarageLocations> createState() => _GarageLocationsState();
}

class _GarageLocationsState extends State<GarageLocations> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            center: LatLng(-1.292066, 36.821945),
          ),
        ),

      ],
    );
  }
}

