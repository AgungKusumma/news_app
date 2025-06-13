import 'package:news_app/data/model/login_response.dart';

sealed class AuthResultState {}

class AuthNoneState extends AuthResultState {}

class AuthLoadingState extends AuthResultState {}

class AuthErrorState extends AuthResultState {
  final String error;

  AuthErrorState(this.error);
}

class AuthSuccessState extends AuthResultState {
  final String message;
  final LoginResult? data;

  AuthSuccessState(this.message, {this.data});
}
