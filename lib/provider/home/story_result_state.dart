import 'package:news_app/data/model/story_response.dart';

sealed class StoryResultState {}

class StoryNoneState extends StoryResultState {}

class StoryLoadingState extends StoryResultState {}

class StoryErrorState extends StoryResultState {
  final String error;

  StoryErrorState(this.error);
}

class StorySuccessState extends StoryResultState {
  final List<Story> stories;

  StorySuccessState(this.stories);
}
