// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_story_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailStoryResponse _$DetailStoryResponseFromJson(Map<String, dynamic> json) =>
    _DetailStoryResponse(
      error: json['error'] as bool,
      message: json['message'] as String,
      story: Story.fromJson(json['story'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailStoryResponseToJson(
        _DetailStoryResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'story': instance.story,
    };
