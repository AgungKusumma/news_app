import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/data/model/login_response.dart';

part 'auth_result_state.freezed.dart';

@freezed
sealed class AuthResultState with _$AuthResultState {
  const factory AuthResultState.none() = AuthNoneState;
  const factory AuthResultState.loading() = AuthLoadingState;
  const factory AuthResultState.error(String error) = AuthErrorState;
  const factory AuthResultState.success(String message, {LoginResult? data}) = AuthSuccessState;
}
