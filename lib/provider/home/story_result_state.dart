import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/story.dart';

part 'story_result_state.freezed.dart';

@freezed
sealed class StoryResultState with _$StoryResultState {
  const factory StoryResultState.none() = StoryNoneState;
  const factory StoryResultState.loading() = StoryLoadingState;
  const factory StoryResultState.error(String error) = StoryErrorState;
  const factory StoryResultState.success(List<Story> stories) = StorySuccessState;
}

