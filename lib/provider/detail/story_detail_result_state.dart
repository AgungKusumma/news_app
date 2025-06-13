import 'package:news_app/data/model/story_response.dart';

sealed class StoryDetailResultState {}

class StoryDetailNoneState extends StoryDetailResultState {}

class StoryDetailLoadingState extends StoryDetailResultState {}

class StoryDetailErrorState extends StoryDetailResultState {
  final String error;

  StoryDetailErrorState(this.error);
}

class StoryDetailSuccessState extends StoryDetailResultState {
  final Story storyDetail;

  StoryDetailSuccessState(this.storyDetail);
}
