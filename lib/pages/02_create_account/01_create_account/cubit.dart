import 'package:app/core/design/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../core/logic/dio_helper.dart';
import '../02_interested_in/view.dart';
import 'states.dart';

//todo remove text
class CreateAccountCubit extends Cubit<CreateAccountStates> {
  final userNameController = TextEditingController(text: 'Juma');
  final emailController = TextEditingController(text: 'i.juma1988@gmail.com');
  final passwordController = TextEditingController(text: '123456');

  final dio = GetIt.instance<DioHelper>();

  CreateAccountCubit() : super(CreateAccountStates());

  Future<void> sendDate() async {
    emit(LoadingCreateAccountState());
    final response = await dio.post('/auth/register', data: {
      'name': userNameController.text,
      'email': emailController.text,
      'password': passwordController.text
    });

    if (response.isSuccess) {
      print("Registration successful: ${response.data}");
      emit(SuccessCreateAccountState());
      AppGoto(interestedInPage());
    } else {
      print("Registration failed: ${response.message}");
      emit(FailedCreateAccountState(msg: response.message!));
    }
  }
}
