// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_stories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllStoriesResponse _$AllStoriesResponseFromJson(Map<String, dynamic> json) =>
    _AllStoriesResponse(
      error: json['error'] as bool,
      message: json['message'] as String,
      listStory: (json['listStory'] as List<dynamic>)
          .map((e) => Story.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllStoriesResponseToJson(_AllStoriesResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'listStory': instance.listStory,
    };
