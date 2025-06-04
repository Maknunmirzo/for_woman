part of 'sign_up_bloc.dart';



sealed class SignUpEvents {}


final class SignUpPersonalInfoEntered  extends SignUpEvents{}

final class SignUpPhoneNumberEntered extends SignUpEvents{}

class ShowPassword extends SignUpEvents {}
class VerifyCode extends SignUpEvents {}
class CShowPassword extends SignUpEvents {}
final class CreateUser extends SignUpEvents{}
final class SignCodeEntered extends SignUpEvents{}