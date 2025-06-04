
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_state.freezed.dart';

enum SignUpStatus { idle, success, error }



@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    required SignUpStatus status,
    required bool showPassword,
    required bool cShowPassword,
     bool? verifyCode,
    String? code,

  }) = _SignUpState;

  factory SignUpState.initial() => SignUpState(
    status: SignUpStatus.idle,
    showPassword: true,
    cShowPassword: true,
    code: null,
    verifyCode: null
  );
}
