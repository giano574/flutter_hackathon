import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExperienceMapView extends StatefulWidget {
  final List<Experience> experiences;

  const ExperienceMapView({Key key, this.experiences}) : super(key: key);
  @override
  State<ExperienceMapView> createState() => ExperienceMapState();
}

class ExperienceMapState extends State<ExperienceMapView> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ));
  }
}
