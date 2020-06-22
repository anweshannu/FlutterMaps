import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

void main() {
  runApp(Maps());
}

class Maps extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Maps();
}

class _Maps extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    GoogleMapController mapController;

    void _onMapCreated(GoogleMapController controller) {
      setState(() {
        mapController = controller;
      });
    }

    final LatLng _center = const LatLng(45.521563, -122.677433);
    return MaterialApp(
        title: "Your Maps",
        theme: ThemeData.dark(),
        home: Scaffold(
            body: Stack(
children: <Widget>[ Container(
//          height: 400,
//          width: 400,
                child: GoogleMap(
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 11.0,
                  ),
                ),
              ),]
            )

        ));
  }
}
