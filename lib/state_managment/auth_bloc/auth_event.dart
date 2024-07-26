// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

class LoginByEmail extends AuthEvent {
  LoginModel loginModel;
  LoginByEmail({
    required this.loginModel,
  });
}

class ValidateOtpCode implements AuthEvent {
  String code;
  ValidateOtpCode({
    required this.code,
  });
}
