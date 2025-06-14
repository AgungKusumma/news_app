// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_story_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailStoryResponse {
  bool get error;
  String get message;
  Story get story;

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DetailStoryResponseCopyWith<DetailStoryResponse> get copyWith =>
      _$DetailStoryResponseCopyWithImpl<DetailStoryResponse>(
          this as DetailStoryResponse, _$identity);

  /// Serializes this DetailStoryResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DetailStoryResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, story);

  @override
  String toString() {
    return 'DetailStoryResponse(error: $error, message: $message, story: $story)';
  }
}

/// @nodoc
abstract mixin class $DetailStoryResponseCopyWith<$Res> {
  factory $DetailStoryResponseCopyWith(
          DetailStoryResponse value, $Res Function(DetailStoryResponse) _then) =
      _$DetailStoryResponseCopyWithImpl;
  @useResult
  $Res call({bool error, String message, Story story});

  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class _$DetailStoryResponseCopyWithImpl<$Res>
    implements $DetailStoryResponseCopyWith<$Res> {
  _$DetailStoryResponseCopyWithImpl(this._self, this._then);

  final DetailStoryResponse _self;
  final $Res Function(DetailStoryResponse) _then;

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? story = null,
  }) {
    return _then(_self.copyWith(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _self.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_self.story, (value) {
      return _then(_self.copyWith(story: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DetailStoryResponse implements DetailStoryResponse {
  const _DetailStoryResponse(
      {required this.error, required this.message, required this.story});
  factory _DetailStoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailStoryResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final Story story;

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DetailStoryResponseCopyWith<_DetailStoryResponse> get copyWith =>
      __$DetailStoryResponseCopyWithImpl<_DetailStoryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DetailStoryResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailStoryResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.story, story) || other.story == story));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, story);

  @override
  String toString() {
    return 'DetailStoryResponse(error: $error, message: $message, story: $story)';
  }
}

/// @nodoc
abstract mixin class _$DetailStoryResponseCopyWith<$Res>
    implements $DetailStoryResponseCopyWith<$Res> {
  factory _$DetailStoryResponseCopyWith(_DetailStoryResponse value,
          $Res Function(_DetailStoryResponse) _then) =
      __$DetailStoryResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, String message, Story story});

  @override
  $StoryCopyWith<$Res> get story;
}

/// @nodoc
class __$DetailStoryResponseCopyWithImpl<$Res>
    implements _$DetailStoryResponseCopyWith<$Res> {
  __$DetailStoryResponseCopyWithImpl(this._self, this._then);

  final _DetailStoryResponse _self;
  final $Res Function(_DetailStoryResponse) _then;

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? story = null,
  }) {
    return _then(_DetailStoryResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      story: null == story
          ? _self.story
          : story // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }

  /// Create a copy of DetailStoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get story {
    return $StoryCopyWith<$Res>(_self.story, (value) {
      return _then(_self.copyWith(story: value));
    });
  }
}

// dart format on
