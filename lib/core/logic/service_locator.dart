import 'package:app/core/logic/dio_helper.dart';
import 'package:app/pages/03_login/cubit.dart';
import 'package:app/pages/04_forget_password/01_forget_password/cubit.dart';
import 'package:app/pages/05_home_screen/pages/01_home/cubit.dart';
import 'package:app/pages/99_test/cubit.dart';
import 'package:get_it/get_it.dart';

void initServiceLocator() {
  final container = GetIt.instance;
  container.registerSingleton(DioHelper());
  container.registerFactory(() => LoginCubit());
  container.registerFactory(() => ForgetPasswordCubit());
  container.registerFactory(() => HomeCubit()..getData());
  container.registerFactory(() => ShoppingAppCubit()..getData());
}
