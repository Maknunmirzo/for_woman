import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginStatus {idle, success, error }

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    required bool showPassword,
    required LoginStatus status,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState(
    showPassword: true,
    status: LoginStatus.idle,
  );
}
