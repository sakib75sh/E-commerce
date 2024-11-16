part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LogininLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginFaild extends LoginEvent {
  final String message;
  const LoginFaild(this.message);
}
