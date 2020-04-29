import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'data_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:location/location.dart';

class GMapNavigator extends StatefulWidget {
  GMapNavigator();

  @override
  _GMapNavigatorState createState() => _GMapNavigatorState();
}

class _GMapNavigatorState extends State<GMapNavigator> {
  static const pageIndex = 2;
  static LocationData currentLocation;

  Completer<GoogleMapController> _controller = Completer();

  _openOnGoogleMapApp(double latitude, double longitude) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      // Could not open the map.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.color_Button,
        title: Text("Map to LX"),
      ),

      bottomNavigationBar: CustomNavigationBar((int i) {
        if (i != pageIndex) {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CustomNavigationBar.page[i]));
        }
      }, pageIndex),
      backgroundColor: AppConstant.color_Background,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Pressed");
          _openOnGoogleMapApp(13.651975, 100.493738);
        },
        label: Text("Open Google Map"),
        icon: Icon(Icons.location_on),
      ),
      body: GoogleMap(
        myLocationEnabled: true,
        markers: <Marker>{
          Marker(
            markerId: MarkerId("1"),
            position: LatLng(13.651975, 100.493738),
            infoWindow: InfoWindow(title: "KMUTT LX", snippet: "Exibition"),
          ),
        },
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(13.651975, 100.493738),
          zoom: 16,
        ),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
