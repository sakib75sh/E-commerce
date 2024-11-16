import 'package:bloc/bloc.dart';
import 'package:e_commerce/src/data/repository/repositores.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository repository;
  LoginBloc(this.repository) : super(LoginInitial()) {
    on<GoogleLoginRequest>((event, emit) async {
      // function of google login
      try {
        emit(LogininLoading());
        final user = await repository.signInWithGoogle();
        debugPrint('User: ${user?.displayName}');
        emit(LoginSuccess());
      } catch (e) {
        debugPrint(e.toString());
        emit(LoginFaild(e.toString()) as LoginState);
      }
    });

    on<FacebookLoginRequest>((event, emit) async {
      try {
        emit(LogininLoading());
        final user = await repository.signInWithFacebook();
        debugPrint('User: ${user?.displayName}');
        emit(LoginSuccess());
      } catch (e) {
        debugPrint(e.toString());
        emit(LoginFaild(e.toString()) as LoginState);
      }
    });
    // on<GithubLoginRequest>((event, emit) async {
    //   try {
    //     emit(LogininLoading());
    //     final user = await repository.signInWithGithub();
    //     debugPrint('User: ${user?.displayName}');
    //     emit(LoginSuccess());
    //   } catch (e) {
    //     debugPrint(e.toString());
    //     emit(LoginFaild(e.toString()) as LoginState);
    //   }
    // });
    // on<GithubLoginRequest>((event, emit) {
    //   repository.signInWithGithub(context: context);
    // });
  }
}
