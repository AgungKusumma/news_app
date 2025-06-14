// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'story_detail_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoryDetailResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryDetailResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryDetailResultState()';
  }
}

/// @nodoc
class $StoryDetailResultStateCopyWith<$Res> {
  $StoryDetailResultStateCopyWith(
      StoryDetailResultState _, $Res Function(StoryDetailResultState) __);
}

/// @nodoc

class StoryDetailNoneState implements StoryDetailResultState {
  const StoryDetailNoneState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryDetailNoneState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryDetailResultState.none()';
  }
}

/// @nodoc

class StoryDetailLoadingState implements StoryDetailResultState {
  const StoryDetailLoadingState();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StoryDetailLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StoryDetailResultState.loading()';
  }
}

/// @nodoc

class StoryDetailErrorState implements StoryDetailResultState {
  const StoryDetailErrorState(this.error);

  final String error;

  /// Create a copy of StoryDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryDetailErrorStateCopyWith<StoryDetailErrorState> get copyWith =>
      _$StoryDetailErrorStateCopyWithImpl<StoryDetailErrorState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoryDetailErrorState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'StoryDetailResultState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $StoryDetailErrorStateCopyWith<$Res>
    implements $StoryDetailResultStateCopyWith<$Res> {
  factory $StoryDetailErrorStateCopyWith(StoryDetailErrorState value,
          $Res Function(StoryDetailErrorState) _then) =
      _$StoryDetailErrorStateCopyWithImpl;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$StoryDetailErrorStateCopyWithImpl<$Res>
    implements $StoryDetailErrorStateCopyWith<$Res> {
  _$StoryDetailErrorStateCopyWithImpl(this._self, this._then);

  final StoryDetailErrorState _self;
  final $Res Function(StoryDetailErrorState) _then;

  /// Create a copy of StoryDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(StoryDetailErrorState(
      null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class StoryDetailSuccessState implements StoryDetailResultState {
  const StoryDetailSuccessState(this.storyDetail);

  final Story storyDetail;

  /// Create a copy of StoryDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StoryDetailSuccessStateCopyWith<StoryDetailSuccessState> get copyWith =>
      _$StoryDetailSuccessStateCopyWithImpl<StoryDetailSuccessState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StoryDetailSuccessState &&
            (identical(other.storyDetail, storyDetail) ||
                other.storyDetail == storyDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, storyDetail);

  @override
  String toString() {
    return 'StoryDetailResultState.success(storyDetail: $storyDetail)';
  }
}

/// @nodoc
abstract mixin class $StoryDetailSuccessStateCopyWith<$Res>
    implements $StoryDetailResultStateCopyWith<$Res> {
  factory $StoryDetailSuccessStateCopyWith(StoryDetailSuccessState value,
          $Res Function(StoryDetailSuccessState) _then) =
      _$StoryDetailSuccessStateCopyWithImpl;
  @useResult
  $Res call({Story storyDetail});

  $StoryCopyWith<$Res> get storyDetail;
}

/// @nodoc
class _$StoryDetailSuccessStateCopyWithImpl<$Res>
    implements $StoryDetailSuccessStateCopyWith<$Res> {
  _$StoryDetailSuccessStateCopyWithImpl(this._self, this._then);

  final StoryDetailSuccessState _self;
  final $Res Function(StoryDetailSuccessState) _then;

  /// Create a copy of StoryDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? storyDetail = null,
  }) {
    return _then(StoryDetailSuccessState(
      null == storyDetail
          ? _self.storyDetail
          : storyDetail // ignore: cast_nullable_to_non_nullable
              as Story,
    ));
  }

  /// Create a copy of StoryDetailResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StoryCopyWith<$Res> get storyDetail {
    return $StoryCopyWith<$Res>(_self.storyDetail, (value) {
      return _then(_self.copyWith(storyDetail: value));
    });
  }
}

// dart format on
