// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) =>
    _BaseResponse(
      error: json['error'] as bool,
      message: json['message'] as String,
    );

Map<String, dynamic> _$BaseResponseToJson(_BaseResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
    };
