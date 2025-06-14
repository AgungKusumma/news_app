import 'package:flutter/material.dart';
import 'package:news_app/data/model/story.dart';
import 'package:news_app/data/network/api_services.dart';
import 'package:news_app/provider/auth/auth_provider.dart';
import 'package:news_app/provider/home/story_result_state.dart';

class StoryProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthProvider authProvider;

  StoryResultState _state = const StoryResultState.none();

  StoryResultState get state => _state;

  final List<Story> _stories = [];

  List<Story> get stories => _stories;

  int _page = 1;
  final int _size = 10;
  bool _isLoadingMore = false;
  bool _hasNextPage = true;

  bool get isLoadingMore => _isLoadingMore;

  bool get hasNextPage => _hasNextPage;

  StoryProvider({
    required this.apiService,
    required this.authProvider,
  });

  Future<void> fetchStory() async {
    if (!authProvider.isLoggedIn) {
      _state = const StoryResultState.error('User not logged in');
      notifyListeners();
      return;
    }

    _state = const StoryResultState.loading();
    _page = 1;
    _hasNextPage = true;
    notifyListeners();

    try {
      final response = await apiService.getAllStories(
        authProvider.token!,
        page: _page,
        size: _size,
      );
      _stories.clear();
      _stories.addAll(response.listStory);

      _hasNextPage = response.listStory.length == _size;

      _state = StoryResultState.success(_stories);
    } catch (e) {
      _state = StoryResultState.error(e.toString());
    }

    notifyListeners();
  }

  Future<void> fetchMoreStories() async {
    if (_isLoadingMore || !_hasNextPage) return;

    _isLoadingMore = true;
    notifyListeners();

    _page++;

    try {
      final response = await apiService.getAllStories(
        authProvider.token!,
        page: _page,
        size: _size,
      );

      final newStories = response.listStory;

      if (newStories.isNotEmpty) {
        _stories.addAll(newStories);
        _hasNextPage = newStories.length == _size;
        _state = StoryResultState.success(_stories);
      } else {
        _hasNextPage = false;
      }
    } catch (e) {
      _state = StoryResultState.error(e.toString());
    }

    _isLoadingMore = false;
    notifyListeners();
  }
}
