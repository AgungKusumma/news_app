import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/detail/story_detail_provider.dart';
import 'package:news_app/provider/detail/story_detail_result_state.dart';
import 'package:news_app/utils/date_formatter.dart';
import 'package:provider/provider.dart';

class StoryDetailScreen extends StatelessWidget {
  final String storyId;

  const StoryDetailScreen({super.key, required this.storyId});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StoryDetailProvider(
        apiService: ApiService(),
        authProvider: Provider.of<AuthProvider>(context, listen: false),
      )..fetchDetailStory(storyId),
      child: Scaffold(
        body: Consumer<StoryDetailProvider>(builder: (context, provider, _) {
          final state = provider.state;

          switch (state) {
            case StoryDetailNoneState():
              break;
            case StoryDetailLoadingState():
              const Center(child: CircularProgressIndicator());
            case StoryDetailErrorState(:final error):
              Center(child: Text('Error: $error'));
            case StoryDetailSuccessState(:final storyDetail):
              return Column(
                children: [
                  SafeArea(
                    bottom: false,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            bottomRight: Radius.circular(24),
                          ),
                          child: Image.network(
                            storyDetail.photoUrl,
                            height: 280,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                width: double.infinity,
                                height: 250,
                                color: Colors.grey[300],
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.broken_image,
                                      size: 48,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Image not available',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Positioned(
                          top: 16,
                          left: 16,
                          child: CircleAvatar(
                            backgroundColor: Colors.black45,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.white),
                              onPressed: () => context.pop(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            storyDetail.name,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            storyDetail.description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Created: ${DateFormatter.formatDate(storyDetail.createdAt)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          if (storyDetail.lat != null &&
                              storyDetail.lon != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Location: (${storyDetail.lat}, ${storyDetail.lon})',
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const SizedBox(height: 8),
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: SizedBox(
                                  height: 200,
                                  child: GoogleMap(
                                    initialCameraPosition: CameraPosition(
                                      target: LatLng(
                                          storyDetail.lat!, storyDetail.lon!),
                                      zoom: 14,
                                    ),
                                    gestureRecognizers: <Factory<OneSequenceGestureRecognizer>>{
                                      Factory<OneSequenceGestureRecognizer>(
                                            () => EagerGestureRecognizer(),
                                      ),
                                    },
                                    markers: {
                                      Marker(
                                        markerId:
                                            const MarkerId('story_location'),
                                        position: LatLng(
                                            storyDetail.lat!, storyDetail.lon!),
                                      ),
                                    },
                                    zoomControlsEnabled: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ],
              );
          }

          return const SizedBox.shrink();
        }),
      ),
    );
  }
}
