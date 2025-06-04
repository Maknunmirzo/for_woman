part of 'login_bloc.dart';

sealed class LoginEvent {}


final class OnLoginEvent extends LoginEvent{}

class ShowPassword extends LoginEvent {}