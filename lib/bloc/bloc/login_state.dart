part of 'login_bloc.dart';

abstract class LoginState {}

final class LoginInitial extends LoginState {}
class UserLoginLoadingState extends LoginState{}
class UserLoginSuccessState extends LoginState{}
class UserLoginFailureState extends LoginState{
  final String message;

  UserLoginFailureState({required this.message});
}
