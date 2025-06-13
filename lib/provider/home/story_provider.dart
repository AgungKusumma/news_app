import 'package:flutter/material.dart';
import 'package:news_app/data/model/story_response.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/home/story_result_state.dart';

class StoryProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthProvider authProvider;

  StoryResultState _state = StoryNoneState();

  StoryResultState get state => _state;

  List<Story> _stories = [];

  List<Story> get stories => _stories;

  StoryProvider({
    required this.apiService,
    required this.authProvider,
  });

  Future<void> fetchStory() async {
    if (!authProvider.isLoggedIn) {
      _state = StoryErrorState('User not logged in');
      notifyListeners();
      return;
    }

    _state = StoryLoadingState();
    notifyListeners();

    try {
      final response = await apiService.getAllStories(authProvider.token!);
      _stories = response.listStory;
      _state = StorySuccessState(stories);
    } catch (e) {
      _state = StoryErrorState(e.toString());
    }
    notifyListeners();
  }
}
