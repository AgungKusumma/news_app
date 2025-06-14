import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:news_app/provider/map/map_provider.dart';
import 'package:provider/provider.dart';

class LocationPickerMapWidget extends StatelessWidget {
  const LocationPickerMapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedLocation = context.watch<MapProvider>().selectedLocation;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Select Location (optional)',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: SizedBox(
            height: 200,
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: selectedLocation ?? const LatLng(-6.2, 106.8),
                // default Jakarta
                zoom: 14,
              ),
              gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                Factory<OneSequenceGestureRecognizer>(
                      () => EagerGestureRecognizer(),
                ),
              },
              onTap: (LatLng latLng) {
                context.read<MapProvider>().setLocationWithAddress(latLng);
              },
              markers: selectedLocation != null
                  ? {
                      Marker(
                        markerId: const MarkerId('selected'),
                        position: selectedLocation,
                        infoWindow: InfoWindow(
                          title:
                              context.read<MapProvider>().selectedAddress ?? '',
                        ),
                      )
                    }
                  : {},
              zoomControlsEnabled: true,
            ),
          ),
        ),
        if (selectedLocation != null) ...[
          const SizedBox(height: 8),
          Text(
            'Selected location: (${selectedLocation.latitude}, ${selectedLocation.longitude})',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ]
      ],
    );
  }
}
