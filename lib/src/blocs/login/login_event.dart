part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class GoogleLoginRequest extends LoginEvent {}

class FacebookLoginRequest extends LoginEvent {}

class GithubLoginRequest extends LoginEvent {}
