// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_stories_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllStoriesResponse {
  bool get error;
  String get message;
  List<Story> get listStory;

  /// Create a copy of AllStoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllStoriesResponseCopyWith<AllStoriesResponse> get copyWith =>
      _$AllStoriesResponseCopyWithImpl<AllStoriesResponse>(
          this as AllStoriesResponse, _$identity);

  /// Serializes this AllStoriesResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllStoriesResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.listStory, listStory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(listStory));

  @override
  String toString() {
    return 'AllStoriesResponse(error: $error, message: $message, listStory: $listStory)';
  }
}

/// @nodoc
abstract mixin class $AllStoriesResponseCopyWith<$Res> {
  factory $AllStoriesResponseCopyWith(
          AllStoriesResponse value, $Res Function(AllStoriesResponse) _then) =
      _$AllStoriesResponseCopyWithImpl;
  @useResult
  $Res call({bool error, String message, List<Story> listStory});
}

/// @nodoc
class _$AllStoriesResponseCopyWithImpl<$Res>
    implements $AllStoriesResponseCopyWith<$Res> {
  _$AllStoriesResponseCopyWithImpl(this._self, this._then);

  final AllStoriesResponse _self;
  final $Res Function(AllStoriesResponse) _then;

  /// Create a copy of AllStoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? listStory = null,
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
      listStory: null == listStory
          ? _self.listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AllStoriesResponse implements AllStoriesResponse {
  const _AllStoriesResponse(
      {required this.error,
      required this.message,
      required final List<Story> listStory})
      : _listStory = listStory;
  factory _AllStoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AllStoriesResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  final List<Story> _listStory;
  @override
  List<Story> get listStory {
    if (_listStory is EqualUnmodifiableListView) return _listStory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listStory);
  }

  /// Create a copy of AllStoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllStoriesResponseCopyWith<_AllStoriesResponse> get copyWith =>
      __$AllStoriesResponseCopyWithImpl<_AllStoriesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllStoriesResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllStoriesResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._listStory, _listStory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_listStory));

  @override
  String toString() {
    return 'AllStoriesResponse(error: $error, message: $message, listStory: $listStory)';
  }
}

/// @nodoc
abstract mixin class _$AllStoriesResponseCopyWith<$Res>
    implements $AllStoriesResponseCopyWith<$Res> {
  factory _$AllStoriesResponseCopyWith(
          _AllStoriesResponse value, $Res Function(_AllStoriesResponse) _then) =
      __$AllStoriesResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, String message, List<Story> listStory});
}

/// @nodoc
class __$AllStoriesResponseCopyWithImpl<$Res>
    implements _$AllStoriesResponseCopyWith<$Res> {
  __$AllStoriesResponseCopyWithImpl(this._self, this._then);

  final _AllStoriesResponse _self;
  final $Res Function(_AllStoriesResponse) _then;

  /// Create a copy of AllStoriesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? listStory = null,
  }) {
    return _then(_AllStoriesResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      listStory: null == listStory
          ? _self._listStory
          : listStory // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

// dart format on
