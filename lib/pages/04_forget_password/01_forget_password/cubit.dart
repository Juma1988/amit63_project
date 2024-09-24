import 'package:app/core/design/navigator.dart';
import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/04_forget_password/01_forget_password/states.dart';
import 'package:app/pages/test_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordStates> {
  final DioHelper _dio;

  ForgetPasswordCubit(this._dio) : super(ForgetPasswordInitState());

  final emailController = TextEditingController(text: 'i.juma1988@gmail.com');

  Future<void> postData() async {
    emit(ForgetPasswordLoadingState());
    final response =
        await _dio.post('auth/otp', data: {'email': emailController.text});

    if (response.isSuccess) {
      AppGoto(TestView());
      emit(ForgetPasswordSuccessState());
    } else {
      AppGoto(TestView());
      emit(ForgetPasswordFailedState());
    }
  }
}
