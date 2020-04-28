import 'package:flutter/material.dart';
import 'data_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

class GMapNavigator extends StatefulWidget {
  GMapNavigator();

  @override
  _GMapNavigatorState createState() => _GMapNavigatorState();
}

class _GMapNavigatorState extends State<GMapNavigator> {
  static final pageIndex = 2;

  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar((int i) {
          if (i != pageIndex) {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CustomNavigationBar.page[i]));
          }
        }, pageIndex),

        backgroundColor: AppConstant.color_Background,

        body: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(13.7650836, 100.5379664),
            zoom: 16,
          ),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),  
        );
  }
}
