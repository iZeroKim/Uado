import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class MechanicLocation extends StatefulWidget {
  const MechanicLocation({Key? key}) : super(key: key);

  @override
  State<MechanicLocation> createState() => _MechanicLocationState();
}

class _MechanicLocationState extends State<MechanicLocation> {
  @override
  Widget build(BuildContext context) {
    late GoogleMapController mapController;

    final LatLng _center = const LatLng(-1.296705, 36.806889);
    final marker = Marker(
      markerId: MarkerId("current"),
      position: LatLng(_center.latitude, _center.longitude),
      infoWindow: InfoWindow(
        title: "You are here",
      ),
    );

    void _onMapCreated(GoogleMapController controller) {
      mapController = controller;
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(88, 133, 96, 1),
          elevation: 1.0,
          title: const Text("Located at"),
        ),
        body: SafeArea(
            child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 15,

          ),
              markers: {marker},
              mapType: MapType.normal,
        )));
  }
}
