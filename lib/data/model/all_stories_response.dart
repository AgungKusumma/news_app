import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/story.dart';
part 'all_stories_response.freezed.dart';
part 'all_stories_response.g.dart';

@freezed
abstract class AllStoriesResponse with _$AllStoriesResponse {
  const factory AllStoriesResponse({
    required bool error,
    required String message,
    required List<Story> listStory,
  }) = _AllStoriesResponse;

  factory AllStoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllStoriesResponseFromJson(json);
}
