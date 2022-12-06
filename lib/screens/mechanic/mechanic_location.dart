import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';


class MechanicLocation extends StatefulWidget {
  const MechanicLocation({Key? key}) : super(key: key);

  @override
  State<MechanicLocation> createState() => _MechanicLocationState();
}

class _MechanicLocationState extends State<MechanicLocation> {


  @override
  Widget build(BuildContext context) {
    MapController mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 158, 138, 1),
        elevation: 1.0,
        title: const Text("Located at"),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
        OSMFlutter(
        controller:mapController,
          //currentLocation: false,
          road: Road(
            startIcon: MarkerIcon(
              icon: Icon(
                Icons.person,
                size: 64,
                color: Colors.brown,
              ),
            ),
            roadColor: Colors.yellowAccent,
          ),
          markerIcon: MarkerIcon(
            icon: Icon(
              Icons.person_pin_circle,
              color: Colors.blue,
              size: 56,
            ),
          ),
          //initPosition: GeoPoint(latitude: 47.35387, longitude: 8.43609),
        )
              ],
            )
          ],
        )
      ),
    );
  }
}
