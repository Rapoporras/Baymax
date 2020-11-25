import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapsPage extends StatefulWidget {
  MapsPage({Key key}) : super(key: key);

  @override
  _MapsPage createState() => new _MapsPage();
}

class _MapsPage extends State<MapsPage> with TickerProviderStateMixin {
  // bool isSwitched = false;
  // // String dropdownValue = 'One';
  // String dropdownValue2 = 'Castellano';

  // String value = "";
  // // Declare this variable
  // int selectedRadioTile;
  // int selectedRadio;
  // @override
  // void initState() {
  //   super.initState();
  //   selectedRadio = 0;
  //   selectedRadioTile = 0;
  // }

  // setSelectedRadioTile(int val) {
  //   setState(() {
  //     selectedRadioTile = val;
  //   });
  // }

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Farmacias Cercanas",
          style: TextStyle(
              color: Color(0xff0c2231),
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Tu Ubicación'),
        icon: FaIcon(
          FontAwesomeIcons.mapMarkerAlt,
          color: Color(0xFF0C2231),
          size: 20,
        ),
      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
