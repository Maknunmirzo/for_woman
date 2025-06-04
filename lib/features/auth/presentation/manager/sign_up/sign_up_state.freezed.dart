// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState {

 SignUpStatus get status; bool get showPassword; bool get cShowPassword; bool? get verifyCode; String? get code;
/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpStateCopyWith<SignUpState> get copyWith => _$SignUpStateCopyWithImpl<SignUpState>(this as SignUpState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState&&(identical(other.status, status) || other.status == status)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.cShowPassword, cShowPassword) || other.cShowPassword == cShowPassword)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,status,showPassword,cShowPassword,verifyCode,code);

@override
String toString() {
  return 'SignUpState(status: $status, showPassword: $showPassword, cShowPassword: $cShowPassword, verifyCode: $verifyCode, code: $code)';
}


}

/// @nodoc
abstract mixin class $SignUpStateCopyWith<$Res>  {
  factory $SignUpStateCopyWith(SignUpState value, $Res Function(SignUpState) _then) = _$SignUpStateCopyWithImpl;
@useResult
$Res call({
 SignUpStatus status, bool showPassword, bool cShowPassword, bool? verifyCode, String? code
});




}
/// @nodoc
class _$SignUpStateCopyWithImpl<$Res>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._self, this._then);

  final SignUpState _self;
  final $Res Function(SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? showPassword = null,Object? cShowPassword = null,Object? verifyCode = freezed,Object? code = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,cShowPassword: null == cShowPassword ? _self.cShowPassword : cShowPassword // ignore: cast_nullable_to_non_nullable
as bool,verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as bool?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _SignUpState implements SignUpState {
  const _SignUpState({required this.status, required this.showPassword, required this.cShowPassword, this.verifyCode, this.code});
  

@override final  SignUpStatus status;
@override final  bool showPassword;
@override final  bool cShowPassword;
@override final  bool? verifyCode;
@override final  String? code;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpStateCopyWith<_SignUpState> get copyWith => __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpState&&(identical(other.status, status) || other.status == status)&&(identical(other.showPassword, showPassword) || other.showPassword == showPassword)&&(identical(other.cShowPassword, cShowPassword) || other.cShowPassword == cShowPassword)&&(identical(other.verifyCode, verifyCode) || other.verifyCode == verifyCode)&&(identical(other.code, code) || other.code == code));
}


@override
int get hashCode => Object.hash(runtimeType,status,showPassword,cShowPassword,verifyCode,code);

@override
String toString() {
  return 'SignUpState(status: $status, showPassword: $showPassword, cShowPassword: $cShowPassword, verifyCode: $verifyCode, code: $code)';
}


}

/// @nodoc
abstract mixin class _$SignUpStateCopyWith<$Res> implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(_SignUpState value, $Res Function(_SignUpState) _then) = __$SignUpStateCopyWithImpl;
@override @useResult
$Res call({
 SignUpStatus status, bool showPassword, bool cShowPassword, bool? verifyCode, String? code
});




}
/// @nodoc
class __$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(this._self, this._then);

  final _SignUpState _self;
  final $Res Function(_SignUpState) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? showPassword = null,Object? cShowPassword = null,Object? verifyCode = freezed,Object? code = freezed,}) {
  return _then(_SignUpState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SignUpStatus,showPassword: null == showPassword ? _self.showPassword : showPassword // ignore: cast_nullable_to_non_nullable
as bool,cShowPassword: null == cShowPassword ? _self.cShowPassword : cShowPassword // ignore: cast_nullable_to_non_nullable
as bool,verifyCode: freezed == verifyCode ? _self.verifyCode : verifyCode // ignore: cast_nullable_to_non_nullable
as bool?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
