import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/experience.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ExperienceMapView extends StatefulWidget {
  final List<Experience> experiences;

  const ExperienceMapView({Key key, this.experiences}) : super(key: key);

  @override
  State<ExperienceMapView> createState() => ExperienceMapState();
}

class ExperienceMapState extends State<ExperienceMapView> {
  Map<String, Marker> _markers = {};
  GoogleMapController mapController;
  var currentLocation;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _getLocation() async {
    currentLocation = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    setState(() {
      _markers.clear();
      final marker = Marker(
        markerId: MarkerId("curr_loc"),
        position: LatLng(currentLocation.latitude, currentLocation.longitude),
        infoWindow: InfoWindow(title: 'Your Location'),
      );
      _markers["Current Location"] = marker;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
          target: LatLng(40.688841, -74.044015),
          zoom: 11,
        ),
        markers: _markers.values.toSet(),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: _getLocation,
//        tooltip: 'Get Location',
//        child: Icon(
//          Icons.flag,
//        ),
//      ),
    );
  }
}
