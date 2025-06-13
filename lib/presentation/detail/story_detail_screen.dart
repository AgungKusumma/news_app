import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
        body: Consumer<StoryDetailProvider>(
          builder: (context, provider, _) {
            final state = provider.state;

            if (state is StoryDetailLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is StoryDetailErrorState) {
              return Center(child: Text('Error: ${state.error}'));
            } else if (state is StoryDetailSuccessState) {
              final story = state.storyDetail;

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
                            story.photoUrl,
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
                            story.name,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            story.description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 24),
                          Text(
                            'Created: ${DateFormatter.formatDate(story.createdAt)}',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          if (story.lat != null && story.lon != null) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Location: (${story.lat}, ${story.lon})',
                              style: Theme.of(context).textTheme.bodySmall,
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
          },
        ),
      ),
    );
  }
}
