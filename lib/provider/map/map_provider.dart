import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapProvider extends ChangeNotifier {
  LatLng? _selectedLocation;

  LatLng? get selectedLocation => _selectedLocation;

  String? _selectedAddress;

  String? get selectedAddress => _selectedAddress;

  Future<void> setLocationWithAddress(LatLng latLng) async {
    _selectedLocation = latLng;
    try {
      final placemarks = await placemarkFromCoordinates(
        latLng.latitude,
        latLng.longitude,
      );
      if (placemarks.isNotEmpty) {
        final place = placemarks.first;
        _selectedAddress =
            '${place.street}, ${place.subLocality}, ${place.locality}';
      } else {
        _selectedAddress = 'Unknown location';
      }
    } catch (e) {
      _selectedAddress = 'Failed to get address';
    }
    notifyListeners();
  }

  void clearSelectedLocation() {
    _selectedLocation = null;
    _selectedAddress = '';
    notifyListeners();
  }
}
