
import 'package:freezed_annotation/freezed_annotation.dart' hide JsonKey;
import 'package:json_annotation/json_annotation.dart';
import 'package:news_app/data/model/story.dart';

part 'detail_story_response.freezed.dart';
part 'detail_story_response.g.dart';

@freezed
abstract class DetailStoryResponse with _$DetailStoryResponse {
  const factory DetailStoryResponse({
    required bool error,
    required String message,
    required Story story,
  }) = _DetailStoryResponse;

  factory DetailStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailStoryResponseFromJson(json);
}
