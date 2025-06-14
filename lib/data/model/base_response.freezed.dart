// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BaseResponse {
  bool get error;
  String get message;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BaseResponseCopyWith<BaseResponse> get copyWith =>
      _$BaseResponseCopyWithImpl<BaseResponse>(
          this as BaseResponse, _$identity);

  /// Serializes this BaseResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BaseResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @override
  String toString() {
    return 'BaseResponse(error: $error, message: $message)';
  }
}

/// @nodoc
abstract mixin class $BaseResponseCopyWith<$Res> {
  factory $BaseResponseCopyWith(
          BaseResponse value, $Res Function(BaseResponse) _then) =
      _$BaseResponseCopyWithImpl;
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class _$BaseResponseCopyWithImpl<$Res> implements $BaseResponseCopyWith<$Res> {
  _$BaseResponseCopyWithImpl(this._self, this._then);

  final BaseResponse _self;
  final $Res Function(BaseResponse) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _BaseResponse implements BaseResponse {
  const _BaseResponse({required this.error, required this.message});
  factory _BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  @override
  final bool error;
  @override
  final String message;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BaseResponseCopyWith<_BaseResponse> get copyWith =>
      __$BaseResponseCopyWithImpl<_BaseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BaseResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BaseResponse &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, message);

  @override
  String toString() {
    return 'BaseResponse(error: $error, message: $message)';
  }
}

/// @nodoc
abstract mixin class _$BaseResponseCopyWith<$Res>
    implements $BaseResponseCopyWith<$Res> {
  factory _$BaseResponseCopyWith(
          _BaseResponse value, $Res Function(_BaseResponse) _then) =
      __$BaseResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool error, String message});
}

/// @nodoc
class __$BaseResponseCopyWithImpl<$Res>
    implements _$BaseResponseCopyWith<$Res> {
  __$BaseResponseCopyWithImpl(this._self, this._then);

  final _BaseResponse _self;
  final $Res Function(_BaseResponse) _then;

  /// Create a copy of BaseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
    Object? message = null,
  }) {
    return _then(_BaseResponse(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
