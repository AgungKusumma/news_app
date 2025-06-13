import 'package:news_app/data/model/base_response.dart';

class AllStoriesResponse extends BaseResponse {
  final List<Story> listStory;

  AllStoriesResponse({
    required super.error,
    required super.message,
    required this.listStory,
  });

  factory AllStoriesResponse.fromJson(Map<String, dynamic> json) {
    return AllStoriesResponse(
      error: json['error'],
      message: json['message'],
      listStory: List<Story>.from(json['listStory'].map((x) => Story.fromJson(x))),
    );
  }
}

class Story {
  final String id;
  final String name;
  final String description;
  final String photoUrl;
  final String createdAt;
  final double? lat;
  final double? lon;

  Story({
    required this.id,
    required this.name,
    required this.description,
    required this.photoUrl,
    required this.createdAt,
    this.lat,
    this.lon,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      photoUrl: json['photoUrl'],
      createdAt: json['createdAt'],
      lat: json['lat']?.toDouble(),
      lon: json['lon']?.toDouble(),
    );
  }
}
