import 'package:flutter/material.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MechanicLocation extends StatefulWidget {
  const MechanicLocation({Key? key}) : super(key: key);

  @override
  State<MechanicLocation> createState() => _MechanicLocationState();
}

class _MechanicLocationState extends State<MechanicLocation> {
  @override
  Widget build(BuildContext context) {
    // MapController controller = MapController(
    //   initMapWithUserPosition: false,
    //   initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    //   areaLimit: BoundingBox(
    //     east: 10.4922941,
    //     north: 47.8084648,
    //     south: 45.817995,
    //     west: 5.9559113,
    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(88,133,96, 1),
        elevation: 1.0,
        title: const Text("Located at"),
      ),
      body: SafeArea(
          // child: OSMFlutter(
          //   controller: controller,
          //   trackMyPosition: true,
          //   initZoom: 12,
          //   minZoomLevel: 8,
          //   maxZoomLevel: 14,
          //   stepZoom: 1.0,
          //   userLocationMarker: UserLocationMaker(
          //     personMarker: const MarkerIcon(
          //       icon: Icon(
          //         Icons.location_history_rounded,
          //         color: Colors.red,
          //         size: 48,
          //       ),
          //     ),
          //     directionArrowMarker: const MarkerIcon(
          //       icon: Icon(
          //         Icons.double_arrow,
          //         size: 48,
          //       ),
          //     ),
          //   ),
          //   roadConfiguration: RoadConfiguration(
          //     startIcon: const MarkerIcon(
          //       icon: Icon(
          //         Icons.person,
          //         size: 64,
          //         color: Colors.brown,
          //       ),
          //     ),
          //     roadColor: Colors.yellowAccent,
          //   ),
          //   markerOption: MarkerOption(
          //       defaultMarker: const MarkerIcon(
          //         icon: Icon(
          //           Icons.person_pin_circle,
          //           color: Colors.blue,
          //           size: 56,
          //         ),
          //       )),
          // )),
    child: Text("Map"),)
    );
  }
}
