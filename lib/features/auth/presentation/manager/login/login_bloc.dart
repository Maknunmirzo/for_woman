import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


import '../../../../../core/routing/routes.dart';
import '../../../../../data/repositories/auth_repository.dart';
import '../../../../../main.dart';
import '../auth_validators.dart';
import 'login_state.dart';


part "login_event.dart";

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _repo;

  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  LoginBloc({required AuthRepository repo})
      : _repo = repo,
        super(LoginState.initial()) {
    on<OnLoginEvent>(_login);
    on<ShowPassword>(_showPassword);
  }

  Future _login(OnLoginEvent event, Emitter emit) async {
    if (formKey.currentState!.validate()) {
      bool result =await _repo.login(login:phoneNumberController.text , password: passwordController.text);
      if (result) {
        navigatorKey.currentContext!.go(Routes.home);
        emit(state.copyWith(status: LoginStatus.success));
      } else {
        emit(state.copyWith(
          status: LoginStatus.error
        ));
      }
    }
  }

  String? phoneNumberValidator(String? value) {
    final error = AuthValidators.validatePhoneNumber(value);
    return error;
  }

  String? passwordValidator(String? value) {
    final error = AuthValidators.validatePassword(value);
    return error;
  }

  Future _showPassword(ShowPassword event, Emitter emit) async {
    emit(state.copyWith(showPassword: !state.showPassword));
  }
}
