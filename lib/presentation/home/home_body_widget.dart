import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/provider/home/story_provider.dart';
import 'package:news_app/provider/home/story_result_state.dart';
import 'package:provider/provider.dart';

class HomeBodyWidget extends StatelessWidget {
  final ScrollController scrollController;

  const HomeBodyWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return Consumer<StoryProvider>(
      builder: (context, storyProvider, _) {
        final state = storyProvider.state;

        switch (state) {
          case StoryNoneState():
            break;
          case StoryLoadingState():
            return const Center(
              child: CircularProgressIndicator(color: Colors.blue),
            );
          case StoryErrorState():
            return const Center(
              child: Text(
                'Oops! Something went wrong:\nPlease check your internet connection',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.redAccent, fontSize: 16),
              ),
            );
          case StorySuccessState(:final stories):
            if (stories.isEmpty) {
              return const Center(
                child: Text(
                  'No stories available yet.',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: ListView.builder(
                controller: scrollController,
                itemCount: stories.length + 1,
                itemBuilder: (context, index) {
                  if (index == stories.length) {
                    return storyProvider.hasNextPage
                        ? const Padding(
                            padding: EdgeInsets.all(16),
                            child: Center(child: CircularProgressIndicator()),
                          )
                        : const SizedBox.shrink();
                  }

                  final story = stories[index];
                  return GestureDetector(
                    onTap: () {
                      context.pushNamed(
                        'storyDetail',
                        pathParameters: {'id': story.id},
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage(story.photoUrl),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.6),
                                  Colors.transparent,
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 16,
                            bottom: 16,
                            child: Text(
                              story.name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    color: Colors.black45,
                                    offset: Offset(1, 1),
                                    blurRadius: 2,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
