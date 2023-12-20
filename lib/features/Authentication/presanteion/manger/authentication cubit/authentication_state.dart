part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

class LoginLoding extends AuthenticationState {}

class LoginSuccess extends AuthenticationState {}

class LoginFailure extends AuthenticationState {
 final String errMessage;
  LoginFailure({required this.errMessage});
}


class RegisterLoding extends AuthenticationState {}

class RegisterSuccess extends AuthenticationState {}

class RegisterFailuer extends AuthenticationState {
 final String errMesage;
  RegisterFailuer({required this.errMesage});
}