import 'package:news_app/data/model/base_response.dart';
import 'package:news_app/data/model/story_response.dart';

class DetailStoryResponse extends BaseResponse {
  final Story story;

  DetailStoryResponse({
    required super.error,
    required super.message,
    required this.story,
  });

  factory DetailStoryResponse.fromJson(Map<String, dynamic> json) {
    return DetailStoryResponse(
      error: json['error'],
      message: json['message'],
      story: Story.fromJson(json['story']),
    );
  }
}