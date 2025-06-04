import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import '../../../../../data/repositories/auth_repository.dart';
import '../../../../../main.dart';
import '../../widgets/success_dialog.dart';
import '../auth_validators.dart';
import 'sign_up_state.dart';

part 'sign_up_event.dart';

class SignUpBloc extends Bloc<SignUpEvents, SignUpState> {
  final AuthRepository _repo;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final cPasswordController = TextEditingController();
  final phoneNumberController = TextEditingController();

  final GlobalKey<FormState> formKeyPersonalInfo = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyPhoneNumber = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyPassword = GlobalKey<FormState>();
  final GlobalKey<FormState> formKeyCode = GlobalKey<FormState>();
  SignUpBloc({required AuthRepository repo})
    : _repo = repo,
      super(SignUpState.initial()) {
    on<CreateUser>(_createUser);
    on<ShowPassword>(_showPassword);
    on<CShowPassword>(_cShowPassword);
    on<VerifyCode>(_verifyCode);
    on<SignUpPersonalInfoEntered>(_signUpPersonalInfoEntered);
    on<SignUpPhoneNumberEntered>(_signUpPhoneNumberEntered);
  }


  Future _signUpPersonalInfoEntered(SignUpPersonalInfoEntered event,Emitter<SignUpState> emit) async {
    if (formKeyPersonalInfo.currentState!.validate()){
      navigatorKey.currentContext!.go(Routes.phoneNumber);
    }
  }
  Future _signUpPhoneNumberEntered(SignUpPhoneNumberEntered event,Emitter<SignUpState> emit) async{
    if (formKeyPhoneNumber.currentState!.validate()){
      navigatorKey.currentContext!.go(Routes.otp);
    }
  }

  Future _verifyCode(VerifyCode event,Emitter<SignUpState> emit) async{
    if (formKeyCode.currentState!.validate()){
      emit(state.copyWith(verifyCode: true));
    }else{
      emit(state.copyWith(verifyCode: false));
    }
  }

  Future _createUser(CreateUser event, Emitter emit) async {
    if (formKeyPassword.currentState!.validate()) {
      bool result = await _repo.signUp(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
        phoneNumber: phoneNumberController.text,
      );
      print("$result");
      if (result) {
        navigatorKey.currentContext!.go(Routes.home);
      } else {
        emit(state.copyWith(status: SignUpStatus.error));
      }
    } else {
      emit(state.copyWith(status: SignUpStatus.error));
    }
  }

  String? firsNameValidator(String? value) {
    final error = AuthValidators.validateFirstName(value);
    return error;
  }

  String? lastNameValidator(String? value) {
    final error = AuthValidators.validateLastName(value);
    return error;
  }

  String? emailValidator(String? value) {
    final error = AuthValidators.validateEmail(value);
    return error;
  }

  String? codeValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Code is Required";
    } else if (value.length < 6) {
      return "Please enter full code";
    } else if(value!="888888"){
      return "code is Incorrect";
    }else{
    return null;
    }
  }

  String? passwordValidator(String? value) {
    final error = AuthValidators.validatePassword(value);
    return error;
  }

  String? cPasswordValidator(String? value) {
    final error = AuthValidators.validateConfirmPassword(
      passwordController.text,
      value,
    );
    return error;
  }

  String? phoneNumberValidator(String? value) {
    final error = AuthValidators.validatePhoneNumber(value);
    return error;
  }

  Future _showPassword(ShowPassword event, Emitter emit) async {
    emit(state.copyWith(showPassword: !state.showPassword));
  }

  Future _cShowPassword(CShowPassword event, Emitter emit) async {
    emit(state.copyWith(cShowPassword: !state.cShowPassword));
  }
}
