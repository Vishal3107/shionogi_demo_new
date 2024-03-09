import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shionogi_trial/Data/Services/api.dart';
import 'package:shionogi_trial/Presentation/Pages/login_page.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<OpenTermsEvent>(openTermsEvent);
    // on<LoginButtonEvent>(loginButtonEvent);
    on<VisibilityToggleEvent>(visibilityToggleEvent);
  }

  FutureOr<void> openTermsEvent(
      OpenTermsEvent event, Emitter<LoginState> emit) {
    emit(const LoginLoadedState());
  }

  FutureOr<void> loginButtonEvent(
      LoginButtonEvent event, Emitter<LoginState> emit) async {
    final loginDetails = await ApiService().getToken();
    TextEditingController email = LoginPage().emailCont;
    // TextEditingController password = LoginPage().passwordCont;
    if (email.text == "Dawn.Ruccella@uatshionogi.com") {
      emit(
        const LoginLoadedState(isValid: true),
      );
      event.context.go("/Home_Page");
    }
  }

  FutureOr<void> visibilityToggleEvent(
      VisibilityToggleEvent event, Emitter<LoginState> emit) {
    emit(const LoginLoadedState(isValid: true));
  }
}
