import 'package:flutter/material.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/detail/story_detail_result_state.dart';

class StoryDetailProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthProvider authProvider;

  StoryDetailResultState _state = const StoryDetailResultState.none();

  StoryDetailResultState get state => _state;

  StoryDetailProvider({
    required this.apiService,
    required this.authProvider,
  });

  Future<void> fetchDetailStory(String storyId) async {
    if (!authProvider.isLoggedIn) {
      _state = const StoryDetailResultState.error('User not logged in');
      notifyListeners();
      return;
    }

    _state = const StoryDetailResultState.loading();
    notifyListeners();

    try {
      final response =
          await apiService.getDetailStory(authProvider.token!, storyId);
      _state = StoryDetailResultState.success(response.story);
    } catch (e) {
      _state = StoryDetailResultState.error(e.toString());
    }

    notifyListeners();
  }
}
