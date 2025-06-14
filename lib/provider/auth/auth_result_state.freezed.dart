// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthResultState()';
  }
}

/// @nodoc
class $AuthResultStateCopyWith<$Res> {
  $AuthResultStateCopyWith(
      AuthResultState _, $Res Function(AuthResultState) __);
}

/// @nodoc

class AuthNoneState implements AuthResultState {
  const AuthNoneState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthNoneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthResultState.none()';
  }
}

/// @nodoc

class AuthLoadingState implements AuthResultState {
  const AuthLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthResultState.loading()';
  }
}

/// @nodoc

class AuthErrorState implements AuthResultState {
  const AuthErrorState(this.error);

  final String error;

  /// Create a copy of AuthResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthErrorStateCopyWith<AuthErrorState> get copyWith =>
      _$AuthErrorStateCopyWithImpl<AuthErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'AuthResultState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $AuthErrorStateCopyWith<$Res>
    implements $AuthResultStateCopyWith<$Res> {
  factory $AuthErrorStateCopyWith(
          AuthErrorState value, $Res Function(AuthErrorState) _then) =
      _$AuthErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$AuthErrorStateCopyWithImpl<$Res>
    implements $AuthErrorStateCopyWith<$Res> {
  _$AuthErrorStateCopyWithImpl(this._self, this._then);

  final AuthErrorState _self;
  final $Res Function(AuthErrorState) _then;

  /// Create a copy of AuthResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(AuthErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class AuthSuccessState implements AuthResultState {
  const AuthSuccessState(this.message, {this.data});

  final String message;
  final LoginResult? data;

  /// Create a copy of AuthResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthSuccessStateCopyWith<AuthSuccessState> get copyWith =>
      _$AuthSuccessStateCopyWithImpl<AuthSuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthSuccessState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @override
  String toString() {
    return 'AuthResultState.success(message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $AuthSuccessStateCopyWith<$Res>
    implements $AuthResultStateCopyWith<$Res> {
  factory $AuthSuccessStateCopyWith(
          AuthSuccessState value, $Res Function(AuthSuccessState) _then) =
      _$AuthSuccessStateCopyWithImpl;
  @useResult
  $Res call({String message, LoginResult? data});

  $LoginResultCopyWith<$Res>? get data;
}

/// @nodoc
class _$AuthSuccessStateCopyWithImpl<$Res>
    implements $AuthSuccessStateCopyWith<$Res> {
  _$AuthSuccessStateCopyWithImpl(this._self, this._then);

  final AuthSuccessState _self;
  final $Res Function(AuthSuccessState) _then;

  /// Create a copy of AuthResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(AuthSuccessState(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginResult?,
    ));
  }

  /// Create a copy of AuthResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResultCopyWith<$Res>? get data {
    if (_self.data == null) {
      return null;
    }

    return $LoginResultCopyWith<$Res>(_self.data!, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
