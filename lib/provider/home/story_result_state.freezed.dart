// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryResultState()';
  }
}

/// @nodoc
class $StoryResultStateCopyWith<$Res> {
  $StoryResultStateCopyWith(
      StoryResultState _, $Res Function(StoryResultState) __);
}

/// @nodoc

class StoryNoneState implements StoryResultState {
  const StoryNoneState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryNoneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryResultState.none()';
  }
}

/// @nodoc

class StoryLoadingState implements StoryResultState {
  const StoryLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryResultState.loading()';
  }
}

/// @nodoc

class StoryErrorState implements StoryResultState {
  const StoryErrorState(this.error);

  final String error;

  /// Create a copy of StoryResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryErrorStateCopyWith<StoryErrorState> get copyWith =>
      _$StoryErrorStateCopyWithImpl<StoryErrorState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoryErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'StoryResultState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $StoryErrorStateCopyWith<$Res>
    implements $StoryResultStateCopyWith<$Res> {
  factory $StoryErrorStateCopyWith(
          StoryErrorState value, $Res Function(StoryErrorState) _then) =
      _$StoryErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$StoryErrorStateCopyWithImpl<$Res>
    implements $StoryErrorStateCopyWith<$Res> {
  _$StoryErrorStateCopyWithImpl(this._self, this._then);

  final StoryErrorState _self;
  final $Res Function(StoryErrorState) _then;

  /// Create a copy of StoryResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(StoryErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class StorySuccessState implements StoryResultState {
  const StorySuccessState(final List<Story> stories) : _stories = stories;

  final List<Story> _stories;
  List<Story> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  /// Create a copy of StoryResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StorySuccessStateCopyWith<StorySuccessState> get copyWith =>
      _$StorySuccessStateCopyWithImpl<StorySuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StorySuccessState &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @override
  String toString() {
    return 'StoryResultState.success(stories: $stories)';
  }
}

/// @nodoc
abstract mixin class $StorySuccessStateCopyWith<$Res>
    implements $StoryResultStateCopyWith<$Res> {
  factory $StorySuccessStateCopyWith(
          StorySuccessState value, $Res Function(StorySuccessState) _then) =
      _$StorySuccessStateCopyWithImpl;
  @useResult
  $Res call({List<Story> stories});
}

/// @nodoc
class _$StorySuccessStateCopyWithImpl<$Res>
    implements $StorySuccessStateCopyWith<$Res> {
  _$StorySuccessStateCopyWithImpl(this._self, this._then);

  final StorySuccessState _self;
  final $Res Function(StorySuccessState) _then;

  /// Create a copy of StoryResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? stories = null,
  }) {
    return _then(StorySuccessState(
      null == stories
          ? _self._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<Story>,
    ));
  }
}

// dart format on
