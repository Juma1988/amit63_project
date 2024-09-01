import 'package:app/core/design/navigator.dart';
import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/03_login/states.dart';
import 'package:app/pages/test_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginStates());

  final emailController = TextEditingController(text: 'i.juma1988@gmail.com');
  final passwordController = TextEditingController(text: '123456');
  final formKey = GlobalKey<FormState>();
  final dio = GetIt.instance<DioHelper>();

  Future<void> postData() async {
    emit(LoginLoadingState());
    final response = await dio.post('/auth/login', data: {
      'email': emailController.text,
      'password': passwordController.text
    });
    if (response.isSuccess) {
      emit(LoginSuccessesState());
      AppGoto(TestView());
    } else {
      emit(LoginFailedState());
    }
  }
}
