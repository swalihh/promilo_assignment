

import 'dart:async';

import 'package:either_dart/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promilo/models/user_model.dart';
import 'package:promilo/repositories/auth_repo.dart';
import 'package:promilo/utils/app_servicers.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
   on<LoginUserEvent>(userLogin);
  }

  FutureOr<void> userLogin(LoginUserEvent event, Emitter<LoginState> emit)async {
    print('inblock');
    emit(UserLoginLoadingState());
   final username=event.email;

   final encryptedPassword=AppService.encrypteData(event.password);
   final userData = {
  'username': username,
  'password': encryptedPassword,
  'grant_type': 'password'
};


    final data= await AuthRepo().loginUser(userData);

    data.fold((error) => emit(UserLoginFailureState(message: error.message)), (response)  {
 final user= UserModel.fromJson(response['response']);
 emit(UserLoginSuccessState());

    });
  }
}
