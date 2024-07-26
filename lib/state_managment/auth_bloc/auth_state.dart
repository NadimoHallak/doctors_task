part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class Loading extends AuthState {}

class SuccessLogin extends AuthState {}

class SuccessVlidateUser extends AuthState {}

class CodeMismatch extends AuthState {}

class FieldMismatch extends AuthState {}

class FieldLogin extends AuthState {}

class FieldValidateUser extends AuthState {}
